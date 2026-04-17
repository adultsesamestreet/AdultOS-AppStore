# Curated app catalog

## Core Library

- **Stash** (Core, Media, adult)  
  Best for: performer-, studio-, scene-, and tag-driven browsing.  
  Pairs well with: Whisparr, TPDB Namer, tinyMediaManager (TPDB Edition), Tunarr.
- **Jellyfin** (Core, Media, playback)  
  Best for: main playback layer and Live TV consumer with Tunarr.
- **Komga** (Optional, Media, books/comics)  
  Best for: manga/comics/ebook serving.
- **Swing Music** (Optional, Media, music)  
  Best for: self-hosted browser-based music playback.

## Acquisition

- **Prowlarr** (Core, download/indexers) — shared indexer manager.
- **SABnzbd** (Core, download, usenet) — preferred Usenet downloader.
- **qBittorrent-nox** (Core, download, torrent) — preferred torrent downloader.
- **Deluge** (Optional, download, torrent) — alternate torrent client.
- **Whisparr** (Core, adult, acquisition) — adult acquisition manager.
- **Sonarr / Radarr / Lidarr / Sportarr** (Core/Optional, acquisition) — media-type-specific acquisition managers.

## Metadata & Renaming

- **TPDB Namer** (Core, metadata, adult)  
  Best for: pre-library ingest, matching, renaming, and NFO/image generation.
- **tinyMediaManager (TPDB Edition)** (Core, metadata, advanced)  
  Best for: scraper-driven metadata maintenance and NFO-local artwork workflows.

## Requests / Discovery

- **Jellyseerr** (Core, requests)  
  Best for: request + approval workflows for Jellyfin users.

## Channels & Live TV

- **Tunarr** (Core, iptv, pseudo-tv)  
  Best for: new installs and HDHomeRun/XMLTV/M3U workflows.
- **dizqueTV** (Optional, iptv, pseudo-tv)  
  Best for: legacy/Plex-heavy setups.

## Automation & Optimisation

- **Tdarr** (Advanced, automation, media)  
  Best for: large-scale remux/transcode automation.
  - Remux = container swap without re-encode.
  - Transcode = codec/quality change with re-encode.
- **Unmanic** (Optional, automation) — simpler background optimiser.
- **FileFlows** (Advanced, automation) — visual flow-based file processing.
- **Unpackerr** (Core, utility, download) — extraction helper for Arr stacks.
- **Syncthing** (Optional, sync) — peer-to-peer library/config replication.

## Network & Access

- **Tailscale** (Infrastructure, network, vpn) — secure private remote access for the entire stack.
- **Pi-hole** (Infrastructure, dns) — network DNS/ad blocking option.
- **AdGuard Home** (Infrastructure, dns) — alternative DNS/ad/tracker blocker.

## Home & Documents

- **Paperless-ngx** (Adjacent Utility, documents) — document ingest and archival workflow.
- **Home Assistant Container** (Adjacent Utility, smart-home)  
  Notes: Home Assistant OS is recommended overall; container installs do not include HA add-ons/apps.
