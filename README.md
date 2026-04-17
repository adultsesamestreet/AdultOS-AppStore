# AdultOS Curated App Store for CasaOS / ZimaOS

This repository is a curated Docker Compose app catalog for CasaOS and ZimaOS homelabs. It is designed for users who want a practical media pipeline focused on adult media acquisition, metadata enrichment, library management, pseudo-TV, playback, and supporting infrastructure.

## Who this store is for

- Homelab operators who prefer self-hosted media workflows.
- CasaOS/ZimaOS users who want a coherent install path instead of disconnected app picks.
- Users who need adult-oriented metadata and naming workflows while still supporting broad media, documents, and smart-home utilities.

## Pipeline-first design

This store follows a recommended stack progression:

**remote access / DNS / infrastructure → indexers → download clients → acquisition managers → renaming/metadata → library servers → request layer → pseudo-TV → file optimisation → sync / adjacent utilities**

## Category structure

- **Core Library**: Stash, Jellyfin, Komga, Swing Music
- **Acquisition**: Whisparr, Sonarr, Radarr, Lidarr, Sportarr, Prowlarr, SABnzbd, qBittorrent-nox, Deluge
- **Requests / Discovery**: Jellyseerr
- **Metadata & Renaming**: tinyMediaManager (TPDB Edition), TPDB Namer
- **Channels & Live TV**: Tunarr (recommended), dizqueTV (optional)
- **Automation & Optimisation**: Tdarr, Unmanic, FileFlows, Unpackerr, Syncthing
- **Network & Access**: Tailscale, Pi-hole, AdGuard Home
- **Home & Documents**: Home Assistant (Container), Paperless-ngx

## Core vs optional

- **Core**: Whisparr, Stash, Jellyfin, tinyMediaManager (TPDB Edition), TPDB Namer, Tunarr, Prowlarr, SABnzbd/qBittorrent-nox
- **Optional**: dizqueTV, Komga, Swing Music, Syncthing, Pi-hole, AdGuard Home
- **Advanced**: Tdarr, Unmanic, FileFlows
- **Infrastructure / Adjacent Utility**: Tailscale, Paperless-ngx, Home Assistant Container

## Recommended install order

1. Tailscale
2. Pi-hole **or** AdGuard Home
3. Prowlarr
4. SABnzbd and/or qBittorrent-nox
5. Whisparr / Sonarr / Radarr / Lidarr / Sportarr
6. TPDB Namer
7. tinyMediaManager (TPDB Edition)
8. Stash / Jellyfin / Komga / Swing Music
9. Jellyseerr
10. Tunarr
11. Tdarr / Unmanic / FileFlows / Unpackerr
12. Syncthing
13. Paperless-ngx
14. Home Assistant (Container)

## tinyMediaManager (TPDB Edition)

This store includes a dedicated **tinyMediaManager (TPDB Edition)** entry with a custom image workflow intended for x86_64 deployments.

- TPDB plugin is bundled into `/app/addons` during image build/runtime initialization.
- API key is intentionally left blank by default.
- tinyMediaManager state persists under `/data`.
- Media libraries should be mounted under `/media/...`.
- First-run flow: `Settings → Movies → Scrapers → enable TPDB → paste API key`.

## App catalog

For curated positioning, tags, and relationship guidance (`Pairs well with`, `Best for`, role labels), see [`docs/APP_CATALOG.md`](docs/APP_CATALOG.md).

## Contributing

Please keep new entries consistent with the repo's Docker Compose + `x-casaos` metadata style and test on CasaOS/ZimaOS before opening a PR.
