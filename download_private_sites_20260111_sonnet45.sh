#!/bin/bash
# qBittorrent Private Search Plugins Downloader
# Generated: 2026-01-11
# Model: Claude Sonnet 4.5
# Version: 1.0

cd "$(dirname "$0")/private_sites"

echo "Downloading private site plugins..."

# BakaBT
curl -L "https://raw.githubusercontent.com/MadeOfMagicAndWires/qBit-plugins/master/engines/bakabt.py" -o "bakabt_v1.30_20260111_sonnet45.py"

# DanishBytes
curl -L "https://raw.githubusercontent.com/444995/qbit-search-plugins/main/engines/danishbytes.py" -o "danishbytes_v1.50_20260111_sonnet45.py"

# FileList
curl -L "https://raw.githubusercontent.com/victorBuzdugan/QbittorrentFilelistSearchPlugin/master/filelist.py" -o "filelist_v1.10_20260111_sonnet45.py"

# GazelleGames
curl -L "https://raw.githubusercontent.com/Ooggle/qbittorrent-search-plugins/master/engines/gazellegames.py" -o "gazellegames_v1.30_20260111_sonnet45.py"

# IPTorrents
curl -L "https://raw.githubusercontent.com/txtsd/qB-IPT/master/iptorrents.py" -o "iptorrents_v1.01_20260111_sonnet45.py"

# Kinozal
curl -L "https://raw.githubusercontent.com/imDMG/qBt_SE/master/engines/kinozal.py" -o "kinozal_v2.19_20260111_sonnet45.py"

# LostFilm.TV
curl -L "https://raw.githubusercontent.com/bugsbringer/qbit-plugins/master/lostfilm.py" -o "lostfilm_v0.14_20260111_sonnet45.py"

# nCore
curl -L "https://raw.githubusercontent.com/darktohka/qbittorrent-plugins/master/ncore.py" -o "ncore_v1.3_20260111_sonnet45.py"

# NoNaMe-Club
curl -L "https://raw.githubusercontent.com/imDMG/qBt_SE/master/engines/nnmclub.py" -o "nnmclub_v2.20_20260111_sonnet45.py"

# Pornolab
curl -L "https://raw.githubusercontent.com/TainakaDrums/qbPornolab/master/pornolab.py" -o "pornolab_v1.0_20260111_sonnet45.py"

# Redacted
curl -L "https://raw.githubusercontent.com/evyd13/search-plugins/master/nova3/engines/redacted_ch.py" -o "redacted_ch_v1.00_20260111_sonnet45.py"

# RuTracker (imDMG)
curl -L "https://raw.githubusercontent.com/imDMG/qBt_SE/master/engines/rutracker.py" -o "rutracker_imdmg_v1.16_20260111_sonnet45.py"

# RuTracker (nbusseneau)
curl -L "https://raw.githubusercontent.com/nbusseneau/qBittorrent-rutracker-plugin/master/rutracker.py" -o "rutracker_nbusseneau_v2.2.0_20260111_sonnet45.py"

# TorrentLeech
curl -L "https://raw.githubusercontent.com/444995/qbit-search-plugins/main/engines/torrentleech.py" -o "torrentleech_v1.00_20260111_sonnet45.py"

# Prowlarr
curl -L "https://raw.githubusercontent.com/swannie-eire/prowlarr-qbittorrent-plugins/main/prowlarr.py" -o "prowlarr_v1.0_20260111_sonnet45.py"

# Sharewood
curl -L "https://gist.githubusercontent.com/etn406/2300dd7e8d97ea39442fcdf44c244fe2/raw/48eba68c0e32f9321ef2e47f4f8ecb437b093a61/sharewood.py" -o "sharewood_v1.1_20260111_sonnet45.py"

# SpeedApp.IO
curl -L "https://raw.githubusercontent.com/miIiano/SpeedApp.io-qBittorent-search-plugin/main/speedapp.py" -o "speedapp_v1.1_20260111_sonnet45.py"

# Tapochek
curl -L "https://raw.githubusercontent.com/MjKey/qBT-SE/refs/heads/master/enigines/tapochek.py" -o "tapochek_v1.1_20260111_sonnet45.py"

# Гуртом — торрент-толока
curl -L "https://raw.githubusercontent.com/playday3008/qBittorrent-plugins/refs/heads/main/plugins/search/toloka_to.py" -o "toloka_to_v1.01_20260111_sonnet45.py"

# UnionFansub
curl -L "https://gitlab.com/CrimsonKoba/qb-search-plugin/-/raw/master/unionfansub.py" -o "unionfansub_v1.2_20260111_sonnet45.py"

# YggTorrent
curl -L "https://raw.githubusercontent.com/CravateRouge/qBittorrentSearchPlugins/master/yggtorrent.py" -o "yggtorrent_v1.0_20260111_sonnet45.py"

# YggAPI
curl -L "https://raw.githubusercontent.com/Laiteux/YggAPI-qBittorrent-Search-Plugin/main/yggapi.py" -o "yggapi_v1.1_20260111_sonnet45.py"

echo "Private site plugins download completed!"
