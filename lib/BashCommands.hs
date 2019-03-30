module BashCommands (
  cmdLauncher
, cmdTerminal
, cmdTerminator
, cmdScreenshot
, cmdPlayPause
, cmdNext
, cmdPrev
, cmdLock
, cmdVolUp
, cmdVolDown
, cmdToggleMute
, cmdSpotifyPlayPause
) where

  cmdLauncher   = "rofi -show run"

  cmdTerminal   = "konsole"
  cmdTerminator = "terminator"
  cmdScreenshot = "spectacle"

  cmdPlayPause  = "playerctl play-pause"
  cmdNext       = "playerctl next"
  cmdPrev       = "playerctl previous"
  cmdLock       = "i3lock -f -r5 -s3"
  cmdVolUp      = "amixer -q set Master 5%+"
  cmdVolDown    = "amixer -q set Master 5%-"
  cmdToggleMute = "amixer -q set Master toggle"

  cmdSpotifyPlayPause = "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"
