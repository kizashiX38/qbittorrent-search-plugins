# VERSION: 1.5
# AUTHORS: Lyra Aranha (lyra@lazulyra.com)

import dataclasses
from helpers import retrieve_url
from novaprinter import prettyPrinter
from urllib.parse import urlencode, unquote
import re
import json


@dataclasses.dataclass
class yts_mx_torrent:
    url: str
    hash: str
    quality: str
    type: str
    is_repack: str
    video_codec: str
    bit_depth: str
    audio_channels: str
    seeds: int
    peers: int
    size: str
    size_bytes: int
    date_uploaded: str
    date_uploaded_unix: int


@dataclasses.dataclass
class yts_mx_movie:
    id: int
    url: str
    imdb_code: str
    title: str
    title_english: str
    title_long: str
    slug: str
    year: int
    rating: float
    runtime: int
    genres: list[str]
    summary: str
    description_full: str
    synopsis: str
    yt_trailer_code: str
    language: str
    mpa_rating: str
    background_image: str
    background_image_original: str
    small_cover_image: str
    medium_cover_image: str
    large_cover_image: str
    state: str
    torrents: list[yts_mx_torrent]
    date_uploaded: str
    date_uploaded_unix: int
    
    def __post_init__(self):
        self.torrents = list(yts_mx_torrent(**torrent) for torrent in self.torrents)


@dataclasses.dataclass
class yts_mx_data:
    movie_count: int
    limit: int
    page_number: int
    movies: list[yts_mx_movie] | None = None
    def __post_init__(self):
        if self.movies:
            self.movies = list(yts_mx_movie(**movie) for movie in self.movies)


@dataclasses.dataclass
class yts_mx_response:
    status: str
    status_message: str
    data: yts_mx_data
    # @meta also exists, but a) doesn't interest us and b) Python doesn't accept @ in attribute names
    def __post_init__(self):
        self.data = yts_mx_data(**self.data)


class yts_mx(object):
    """
    `url`, `name`, `supported_categories` should be static variables of the engine_name class,
     otherwise qbt won't install the plugin.

    `url`: The URL of the search engine.
    `name`: The name of the search engine, spaces and special characters are allowed here.
    `supported_categories`: What categories are supported by the search engine and their corresponding id,
    possible categories are ('all', 'anime', 'books', 'games', 'movies', 'music', 'pictures', 'software', 'tv').
    """

    url = 'https://yts.mx/'
    api_url = 'https://yts.mx/api/v2/list_movies.json?'
    name = 'YTS.MX'
    supported_categories = {
        'all': '0',
        'movies': '1'
    }

    # DO NOT CHANGE the name and parameters of this function
    # This function will be the one called by nova2.py
    def search(self, what: str, cat: str='all'):
        """
        Searches yts.mx's API for `what`.

        Automatically parses rating, codec, and quality from `what`.
        
        @param `what`: a string with the search tokens, already escaped (e.g. "Ubuntu+Linux")
        @param `cat`: the name of a search category in ('all', 'anime', 'books', 'games', 'movies', 'music', 'pictures', 'software', 'tv')
        """
        search_url = self.api_url
        
        what = unquote(what)
        search_params = {}

        # quality tagging
        quality_rstring = r'(?:quality=)?((?:2160|1440|1080|720|480|240)p|3D)'
        quality_re = re.search(quality_rstring, what)
        search_resolution = None
        if quality_re:
            search_resolution = quality_re.group(1)
            search_params['quality'] = search_resolution
            what = re.sub(quality_rstring, '', what).strip()
        # yts.mx only supports h264/h265 in search results at time of writing
        codec_rstring = r'\.?(?:x|h)(264|265)'
        codec_re = re.search(codec_rstring, what)
        search_codec = None
        if codec_re:
            search_codec = 'x' + codec_re.group(1)
            if 'quality' in search_params:
                search_params['quality'] += f'.{search_codec}'  # only add if quality also defined, will be checked separately anyways
            what = re.sub(codec_rstring, '', what).strip()

        # rating tagging
        rating_rstring = r'(?:min(?:imum)?_)?rating=(\d)'
        rating_re = re.search(rating_rstring, what)
        if rating_re:
            min_rating = rating_re.group(1)
            search_params['minimum_rating'] = {min_rating}
            what = re.sub(rating_rstring, '', what).strip()

        # genre tagging
        genre_rstring = r'genre=(\w+)'
        genre_re = re.search(genre_rstring, what)
        if genre_re:
            genre = genre_re.group(1)
            what = re.sub(genre_rstring, '', what).strip()
            search_params["genre"] = genre

        # prevent user causing page errors
        search_rstring = r'&page=\d+'
        what = re.sub(search_rstring, '', what).strip()

        # url finalisation
        if what:
            search_params['query_term'] = what
        # print(what)
        search_url += urlencode(search_params)
        # print(search_url)
        api_result: yts_mx_response = self.convert_response(json.loads(retrieve_url(search_url)))
        if api_result.status != 'ok':
            print(api_result.status + api_result.status_message)
            return
        if api_result.data.movie_count == 0:
            return

        for page_no in range((api_result.data.movie_count // api_result.data.limit) + 1):
            api_result: yts_mx_response = self.convert_response(json.loads(retrieve_url(f'{search_url}&page={page_no + 1}')))
            for movie in api_result.data.movies:
                for torrent in movie.torrents:
                    if search_codec and torrent.video_codec != search_codec:
                        continue
                    if search_resolution and torrent.quality != search_resolution:
                        continue
                    formatTorrent = {
                        'link': torrent.url,
                        'name': f'{movie.title_long} [{torrent.quality}] [{torrent.video_codec}] [{torrent.type}] [{torrent.audio_channels}] [YTS.MX]',
                        'size': torrent.size,
                        'seeds': str(torrent.seeds),
                        'leech': str(torrent.peers),
                        'engine_url': self.url,
                        'desc_link': movie.url,
                        'pub_date': torrent.date_uploaded_unix
                    }
                    prettyPrinter(formatTorrent)

    def convert_response(self, api_response: dict) -> yts_mx_response:
        return yts_mx_response(**{k:v for k,v in api_response.items() if k in set(f.name for f in dataclasses.fields(yts_mx_response))})
