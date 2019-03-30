module BashCommands (
  cmdTerminator
, cmdPlayPause
, cmdNext
, cmdPrev
, cmdLock
, cmdVolUp
, cmdVolDown
, cmdToggleMute
, cmdSpotifyPlayPause
) where

  cmdTerminator = "terminator"
  cmdPlayPause  = "playerctl play-pause"
  cmdNext       = "playerctl next"
  cmdPrev       = "playerctl previous"
  cmdLock       = "i3lock -f -r5 -s3"
  cmdVolUp      = "amixer -q set Master 5%+"
  cmdVolDown    = "amixer -q set Master 5%-"
  cmdToggleMute = "amixer -q set Master toggle"

  cmdSpotifyPlayPause = "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"
