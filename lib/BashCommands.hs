module BashCommands (
  cmdLauncher

, cmdTerminal
, cmdTerminator

, cmdScreenshot

, cmdLock

, cmdPlayPause
, cmdNext
, cmdPrev
, cmdVolUp
, cmdVolDown
, cmdToggleMute
) where

  cmdLauncher   = "rofi -show run"

  cmdTerminal   = "konsole"

  cmdTerminator = "terminator"
  cmdScreenshot = "spectacle"

  cmdLock       = "i3lock -f -r5 -s3"

  cmdPlayPause  = "playerctl play-pause"
  cmdNext       = "playerctl next"
  cmdPrev       = "playerctl previous"
  cmdVolUp      = "amixer -q set Master 5%+"
  cmdVolDown    = "amixer -q set Master 5%-"
  cmdToggleMute = "amixer -q set Master toggle"

