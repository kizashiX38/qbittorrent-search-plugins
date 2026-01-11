# qBittorrent Search Plugins Collection 🔍

<div align="center">

![Version](https://img.shields.io/badge/version-1.0-blue.svg)
![Plugins](https://img.shields.io/badge/plugins-88-green.svg)
![License](https://img.shields.io/badge/license-Various-orange.svg)
[![Official Wiki](https://img.shields.io/badge/Official-qBittorrent%20Wiki-blue.svg)](https://github.com/qbittorrent/search-plugins/wiki/Unofficial-search-plugins)

**Curated by DXM369**

A comprehensive collection of 88 qBittorrent search engine plugins for public and private torrent sites.

**📌 All plugins sourced from the [Official qBittorrent Search Plugins Wiki](https://github.com/qbittorrent/search-plugins/wiki/Unofficial-search-plugins)**

[Download](#installation) • [Usage](#how-to-use) • [Plugins List](#plugins-included) • [Contributing](#contributing)

</div>

---

## 🔗 About This Collection

This repository is a **curated bundle** of all available search plugins from the official qBittorrent community wiki. Instead of downloading plugins one-by-one, you get:

✅ All 88 plugins in one place
✅ Organized by public/private sites
✅ Automated update scripts
✅ Ready-to-use with proper naming

**Original Source**: [qBittorrent Unofficial Search Plugins Wiki](https://github.com/qbittorrent/search-plugins/wiki/Unofficial-search-plugins)

> **Note**: All credit goes to the original plugin authors. This is simply a convenient collection point.

---

## 📦 What's Included

- **66 Public Site Plugins** - Free torrent search engines
- **22 Private Site Plugins** - Private tracker integrations (require credentials)
- **Download Scripts** - Automated download scripts for easy updates
- **Complete Documentation** - Detailed setup and usage instructions

## 🚀 Quick Start

### Installation

1. **Clone this repository**
   ```bash
   git clone https://github.com/DXM369/qbittorrent-search-plugins.git
   cd qbittorrent-search-plugins
   ```

2. **In qBittorrent:**
   - Open qBittorrent
   - Go to **Search** tab
   - Click **Search plugins** (bottom right)
   - Click **Install a new one** → **Local file**
   - Navigate to `public_sites/` or `private_sites/`
   - Select the plugin(s) you want
   - Click OK and restart qBittorrent

### How to Use

1. **For Public Sites**: Just install and use - no configuration needed
2. **For Private Sites**:
   - Open the `.py` file in a text editor
   - Find variables like `username`, `password`, `api_key`
   - Add your credentials
   - Save and install

## 📂 Directory Structure

```
qbittorrent-search-plugins/
├── public_sites/              # 66 public torrent site plugins
│   ├── thepiratebay.py
│   ├── 1337x.py
│   ├── nyaasi.py
│   └── ... (63 more)
├── private_sites/             # 22 private tracker plugins
│   ├── rutracker.py
│   ├── torrentleech.py
│   └── ... (20 more)
├── download_public_sites_20260111_sonnet45.sh
├── download_private_sites_20260111_sonnet45.sh
├── rename_to_original_20260111_sonnet45.sh
└── README.md
```

## 🎯 Plugins Included

### Public Sites (66 Plugins)

<details>
<summary>Click to expand full list</summary>

- 1337x
- Academic Torrents
- acgrip
- ali213.net
- anidex.info
- animetosho.org
- AudioBook Bay (ABB)
- Bit Search
- bt4gprx
- btdig
- CalidadTorrent
- CloudTorrents
- Cpasbien
- dark-libria
- divxtotal
- DMHY (2 versions)
- DODI Repacks
- Dontorrent (2 versions)
- Elitetorrent
- esmeraldatorrent
- FitGirl Repacks
- GloTorrents
- Kickass Torrent
- Linux Tracker
- MagnetDL
- MaxiTorrent
- MejorTorrent
- Mikan Project
- mikanani
- My Porn Club
- naranjatorrent
- Nyaa.Pantsu (2 versions)
- Nyaa.si
- Online-Fix
- PediaTorrent (2 versions)
- Pirateiro
- Pornrips
- RockBox
- Rutor
- small-games.info
- Snowfl
- SolidTorrents.to
- SubsPlease.org
- Sukebei (3 versions)
- ThePirateBay
- The RarBg
- TomaDivx
- Tokyo Toshokan
- Torrent9
- TorrentDownload
- Torrent Downloads Pro
- Torrenflix
- TorrentGalaxy
- TrahT
- UnionDHT
- XXXClub
- YourBittorrent
- YTS
- YGGtracker
- Zooqle

</details>

### Private Sites (22 Plugins)

<details>
<summary>Click to expand full list</summary>

⚠️ **Requires Authentication** - Edit plugin files to add your credentials

- BakaBT
- DanishBytes
- FileList
- GazelleGames
- IPTorrents
- Kinozal
- LostFilm.TV
- nCore
- NoNaMe-Club
- Pornolab
- Redacted
- RuTracker (2 versions)
- TorrentLeech
- Prowlarr
- Sharewood
- SpeedApp.IO
- Tapochek
- Гуртом
- UnionFansub
- YggTorrent
- YggAPI

</details>

## 🔧 Updating Plugins

To update all plugins to the latest versions:

```bash
cd qbittorrent-search-plugins
bash download_public_sites_20260111_sonnet45.sh
bash download_private_sites_20260111_sonnet45.sh
bash rename_to_original_20260111_sonnet45.sh
```

## 💡 Troubleshooting

### Plugin Not Working?
1. Check if the torrent site is still online
2. Verify qBittorrent and Python versions are compatible
3. Some sites have Cloudflare protection that may block plugins
4. For private sites, ensure credentials are correct

### Installation Failed?
- Make sure Python 3.6+ is installed
- Check qBittorrent version compatibility (4.0.x - 5.1.x recommended)
- Try restarting qBittorrent after installation

## ⚖️ Legal Disclaimer

This repository is for educational purposes only. Always respect copyright laws and the terms of service of torrent sites. Use responsibly and legally.

## 🤝 Contributing

Found a bug? Have a suggestion? Want to add a new plugin?

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📜 License

Each plugin retains its original license from the respective authors. Please check individual plugin files or their source repositories for license information.

## 🙏 Credits

- All plugin authors listed on the [official qBittorrent wiki](https://github.com/qbittorrent/search-plugins/wiki/Unofficial-search-plugins)
- qBittorrent development team
- **Curated and maintained by DXM369**

## 📧 Contact

**DXM369**
- Email: dxm.nzt48@gmail.com
- GitHub: [@DXM369](https://github.com/DXM369)

---

<div align="center">

**⭐ Star this repository if you find it useful! ⭐**

Made with ❤️ by DXM369

</div>
