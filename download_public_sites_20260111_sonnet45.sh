#!/bin/bash
# qBittorrent Public Search Plugins Downloader
# Generated: 2026-01-11
# Model: Claude Sonnet 4.5
# Version: 1.0

cd "$(dirname "$0")/public_sites"

echo "Downloading public site plugins..."

# 1337x
curl -L "https://gist.githubusercontent.com/scadams/56635407b8dfb8f5f7ede6873922ac8b/raw/f654c10468a0b9945bec9bf31e216993c9b7a961/one337x.py" -o "one337x_v2.2_20260111_sonnet45.py"

# Academic Torrents
curl -L "https://raw.githubusercontent.com/LightDestory/qBittorrent-Search-Plugins/master/src/engines/academictorrents.py" -o "academictorrents_v1.2_20260111_sonnet45.py"

# acgrip
curl -L "https://raw.githubusercontent.com/Cc050511/qBit-search-plugins/main/acgrip.py" -o "acgrip_v1.0_20260111_sonnet45.py"

# ali213.net
curl -L "https://raw.githubusercontent.com/hannsen/qbittorrent_search_plugins/master/ali213.py" -o "ali213_v1.00_20260111_sonnet45.py"

# anidex.info
curl -L "https://raw.githubusercontent.com/nindogo/qbtSearchScripts/master/anidex.py" -o "anidex_v0.02_20260111_sonnet45.py"

# animetosho.org
curl -L "https://raw.githubusercontent.com/AlaaBrahim/qBitTorrent-animetosho-search-plugin/main/animetosho.py" -o "animetosho_v1.1.0_20260111_sonnet45.py"

# AudioBook Bay (ABB)
curl -L "https://raw.githubusercontent.com/nklido/qBittorrent_search_engines/master/engines/audiobookbay.py" -o "audiobookbay_v0.4_20260111_sonnet45.py"

# Bit Search
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/bitsearch.py" -o "bitsearch_v1.1_20260111_sonnet45.py"

# bt4gprx
curl -L "https://raw.githubusercontent.com/TuckerWarlock/qbittorrent-search-plugins/main/bt4gprx.com/bt4gprx.py" -o "bt4gprx_v2.0_20260111_sonnet45.py"

# btdig
curl -L "https://raw.githubusercontent.com/galaris/BTDigg-qBittorrent-plugin/main/btdig.py" -o "btdig_v1.1_20260111_sonnet45.py"

# CalidadTorrent
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/calidadtorrent.py" -o "calidadtorrent_v1.0_20260111_sonnet45.py"

# CloudTorrents
curl -L "https://raw.githubusercontent.com/elazar/qbittorrent-search-plugins/refs/heads/add-cloudtorrents-plugin/nova3/engines/cloudtorrents.py" -o "cloudtorrents_v1.0_20260111_sonnet45.py"

# Cpasbien
curl -L "https://raw.githubusercontent.com/MarcBresson/cpasbien/master/src/cpasbien.py" -o "cpasbien_v2.2_20260111_sonnet45.py"

# dark-libria
curl -L "https://raw.githubusercontent.com/bugsbringer/qbit-plugins/master/darklibria.py" -o "darklibria_v0.10_20260111_sonnet45.py"

# divxtotal
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/divxtotal.py" -o "divxtotal_v1.0_20260111_sonnet45.py"

# DMHY (ZH)
curl -L "https://raw.githubusercontent.com/ZH1637/dmhy/main/dmhy.py" -o "dmhy_zh_v1.0_20260111_sonnet45.py"

# DMHY (dchika)
curl -L "https://raw.githubusercontent.com/diazchika/dmhy/main/dmhy.py" -o "dmhy_dchika_v1.0_20260111_sonnet45.py"

# DODI Repacks
curl -L "https://raw.githubusercontent.com/Bioux1/qbtSearchPlugins/main/dodi_repacks.py" -o "dodi_repacks_v1.1_20260111_sonnet45.py"

# Dontorrent (dangar16)
curl -L "https://raw.githubusercontent.com/dangar16/dontorrent-plugin/main/dontorrent.py" -o "dontorrent_dangar16_v1.0_20260111_sonnet45.py"

# dontorrent (BurningMop)
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/dontorrent.py" -o "dontorrent_burningmop_v1.0_20260111_sonnet45.py"

# Elitetorrent
curl -L "https://raw.githubusercontent.com/iordic/qbittorrent-search-plugins/master/engines/elitetorrent.py" -o "elitetorrent_v1.5_20260111_sonnet45.py"

# esmeraldatorrent
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/esmeraldatorrent.py" -o "esmeraldatorrent_v1.0_20260111_sonnet45.py"

# FitGirl Repacks
curl -L "https://raw.githubusercontent.com/Bioux1/qbtSearchPlugins/main/fitgirl_repacks.py" -o "fitgirl_repacks_v1.1_20260111_sonnet45.py"

# GloTorrents
curl -L "https://raw.githubusercontent.com/LightDestory/qBittorrent-Search-Plugins/master/src/engines/glotorrents.py" -o "glotorrents_v1.5_20260111_sonnet45.py"

# Kickass Torrent
curl -L "https://raw.githubusercontent.com/LightDestory/qBittorrent-Search-Plugins/master/src/engines/kickasstorrents.py" -o "kickasstorrents_v1.0_20260111_sonnet45.py"

# Linux Tracker
curl -L "https://raw.githubusercontent.com/MadeOfMagicAndWires/qBit-plugins/6074a7cccb90dfd5c81b7eaddd3138adec7f3377/engines/linuxtracker.py" -o "linuxtracker_v1.00_20260111_sonnet45.py"

# MagnetDL
curl -L "https://raw.githubusercontent.com/nindogo/qbtSearchScripts/master/magnetdl.py" -o "magnetdl_v1.3_20260111_sonnet45.py"

# MagnetDL with categories
curl -L "https://Scare.ca/dl/qBittorrent/magnetdl.py" -o "magnetdl_categories_v2.0_20260111_sonnet45.py"

# MaxiTorrent
curl -L "https://raw.githubusercontent.com/joseeloren/search-plugins/master/nova3/engines/maxitorrent.py" -o "maxitorrent_v1.25_20260111_sonnet45.py"

# MejorTorrent
curl -L "https://raw.githubusercontent.com/iordic/qbittorrent-search-plugins/master/engines/mejortorrent.py" -o "mejortorrent_v1.0_20260111_sonnet45.py"

# Mikan Project
curl -L "https://raw.githubusercontent.com/Cycloctane/qBittorrent-plugins/master/engines/mikan.py" -o "mikan_project_v0.4_20260111_sonnet45.py"

# mikanani
curl -L "https://raw.githubusercontent.com/Cc050511/qBit-search-plugins/main/mikanani.py" -o "mikanani_v1.2_20260111_sonnet45.py"

# My Porn Club
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/mypornclub.py" -o "mypornclub_v1.1_20260111_sonnet45.py"

# naranjatorrent
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/naranjatorrent.py" -o "naranjatorrent_v1.0_20260111_sonnet45.py"

# Nyaa.Pantsu
curl -L "https://raw.githubusercontent.com/libellula/qbt-plugins/main/pantsu.py" -o "nyaapantsu_4chenz_v1.21_20260111_sonnet45.py"

# Nyaa.pantsu
curl -L "https://raw.githubusercontent.com/MadeOfMagicAndWires/qBit-plugins/refs/heads/main/engines/nyaapantsu.py" -o "nyaapantsu_wires_v1.3_20260111_sonnet45.py"

# Nyaa.si
curl -L "https://raw.githubusercontent.com/MadeOfMagicAndWires/qBit-plugins/master/engines/nyaasi.py" -o "nyaasi_v1.1_20260111_sonnet45.py"

# Online-Fix
curl -L "https://raw.githubusercontent.com/caiocinel/onlinefix-qbittorrent-plugin/main/onlinefix.py" -o "onlinefix_v1.0_20260111_sonnet45.py"

# PediaTorrent (dangar16)
curl -L "https://raw.githubusercontent.com/dangar16/pediatorrent-plugin/refs/heads/main/pediatorrent.py" -o "pediatorrent_dangar16_v1.0_20260111_sonnet45.py"

# PediaTorrent (BurningMop)
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/pediatorrent.py" -o "pediatorrent_burningmop_v1.0_20260111_sonnet45.py"

# Pirateiro
curl -L "https://raw.githubusercontent.com/LightDestory/qBittorrent-Search-Plugins/master/src/engines/pirateiro.py" -o "pirateiro_v1.0_20260111_sonnet45.py"

# Pornrips
curl -L "https://raw.githubusercontent.com/Larsluph/qbittorrent-search-plugins/prt/nova3/engines/pornrips.py" -o "pornrips_v1.0_20260111_sonnet45.py"

# RockBox
curl -L "https://raw.githubusercontent.com/LightDestory/qBittorrent-Search-Plugins/master/src/engines/rockbox.py" -o "rockbox_v1.0_20260111_sonnet45.py"

# Rutor
curl -L "https://raw.githubusercontent.com/imDMG/qBt_SE/master/engines/rutor.py" -o "rutor_v1.16_20260111_sonnet45.py"

# small-games.info
curl -L "https://raw.githubusercontent.com/hannsen/qbittorrent_search_plugins/master/smallgames.py" -o "smallgames_v1.00_20260111_sonnet45.py"

# Snowfl
curl -L "https://raw.githubusercontent.com/LightDestory/qBittorrent-Search-Plugins/master/src/engines/snowfl.py" -o "snowfl_v1.3_20260111_sonnet45.py"

# SolidTorrents.to
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/solidtorrents.py" -o "solidtorrents_v1.0_20260111_sonnet45.py"

# SubsPlease.org
curl -L "https://raw.githubusercontent.com/kli885/qBittorent-SubsPlease-Search-Plugin/main/subsplease.py" -o "subsplease_v1.0_20260111_sonnet45.py"

# Sukebei (Nyaa)
curl -L "https://github.com/vt-idiot/qBit-SukebeiNyaa-plugin/raw/master/engines/sukebeisi.py" -o "sukebeisi_v1.11_20260111_sonnet45.py"

# Sukebei Nyaa
curl -L "https://raw.githubusercontent.com/phuongtailtranminh/qBittorrent-Nyaa-Search-Plugin/master/nyaa.py" -o "sukebei_nyaa_v1.01_20260111_sonnet45.py"

# Sukebei.Pantsu
curl -L "https://raw.githubusercontent.com/libellula/qbt-plugins/main/sukebei.py" -o "sukebeipantsu_v1.21_20260111_sonnet45.py"

# ThePirateBay
curl -L "https://raw.githubusercontent.com/LightDestory/qBittorrent-Search-Plugins/master/src/engines/thepiratebay.py" -o "thepiratebay_v1.0_20260111_sonnet45.py"

# ThePirateBay with categories
curl -L "https://Scare.ca/dl/qBittorrent/thepiratebay.py" -o "thepiratebay_categories_v2.0_20260111_sonnet45.py"

# The RarBg
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/therarbg.py" -o "therarbg_v1.3_20260111_sonnet45.py"

# TomaDivx
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/tomadivx.py" -o "tomadivx_v1.1_20260111_sonnet45.py"

# Tokyo Toshokan
curl -L "https://raw.githubusercontent.com/BrunoReX/qBittorrent-Search-Plugin-TokyoToshokan/master/tokyotoshokan.py" -o "tokyotoshokan_v2.3_20260111_sonnet45.py"

# Torrent9
curl -L "https://raw.githubusercontent.com/menegop/qbfrench/master/torrent9.py" -o "torrent9_v2.0_20260111_sonnet45.py"

# TorrentDownload
curl -L "https://raw.githubusercontent.com/LightDestory/qBittorrent-Search-Plugins/master/src/engines/torrentdownload.py" -o "torrentdownload_v1.0_20260111_sonnet45.py"

# TorrentDownload with categories
curl -L "https://Scare.ca/dl/qBittorrent/torrentdownload.py" -o "torrentdownload_categories_v2.0_20260111_sonnet45.py"

# Torrent Downloads Pro
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/torrentdownloads.py" -o "torrentdownloads_pro_v1.1_20260111_sonnet45.py"

# Torrenflix
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/torrenflix.py" -o "torrenflix_v1.0_20260111_sonnet45.py"

# TorrentGalaxy
curl -L "https://raw.githubusercontent.com/nindogo/qbtSearchScripts/master/torrentgalaxy.py" -o "torrentgalaxy_v0.08_20260111_sonnet45.py"

# TrahT
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/traht.py" -o "traht_v1.0_20260111_sonnet45.py"

# UnionDHT
curl -L "https://raw.githubusercontent.com/msagca/qbittorrent-plugins/main/uniondht.py" -o "uniondht_v1.2_20260111_sonnet45.py"

# XXXClub
curl -L "https://raw.githubusercontent.com/BurningMop/qBittorrent-Search-Plugins/refs/heads/main/xxxclubto.py" -o "xxxclubto_v1.3_20260111_sonnet45.py"

# YourBittorrent
curl -L "https://raw.githubusercontent.com/LightDestory/qBittorrent-Search-Plugins/master/src/engines/yourbittorrent.py" -o "yourbittorrent_v1.0_20260111_sonnet45.py"

# YTS
curl -L "https://codeberg.org/lazulyra/qbit-plugins/raw/branch/main/yts/yts.py" -o "yts_v1.6_20260111_sonnet45.py"

# YGGtracker
curl -L "https://raw.githubusercontent.com/YGGverse/qbittorrent-yggtracker-search-plugin/main/yggtracker.py" -o "yggtracker_v1.1.0_20260111_sonnet45.py"

# Zooqle
curl -L "https://raw.githubusercontent.com/444995/qbit-search-plugins/main/engines/zooqle.py" -o "zooqle_v1.10_20260111_sonnet45.py"

echo "Public site plugins download completed!"
