Vegard asked me to convert the JSON that Spotify supplies, to a CSV with limited data. This is the script that outputs the desired format.

```bash
cat Playlist1.json | jq -r '.playlists.[] | { track: .items[].track, playlist: .name } | [ .track.trackName, .track.artistName, .track.albumName, .playlist ] | @csv' > playlist.csv
```
