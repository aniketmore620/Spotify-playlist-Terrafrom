resource "spotify_playlist" "HipHop" {
  name   = "HipHop"
  tracks = ["19pHSvXUwErAXFktkvYMk9"]
}

data "spotify_search_track" "krsna" {
  artist = "Kr$na"
}

resource "spotify_playlist" "Hiphop" {
  name        = "hiphop"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
    data.spotify_search_track.krsna.tracks[0].id,
    data.spotify_search_track.krsna.tracks[1].id,
    data.spotify_search_track.krsna.tracks[2].id,
  ]
}
