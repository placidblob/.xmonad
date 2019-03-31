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

-------------------------------------------------------------------------------------------------
-- variables

  var__VolumeStep = "5%"

  -- i3lock blur parameters
  var__BlurRadius = "5"
  var__BlurSigma  = "4"

-------------------------------------------------------------------------------------------------
-- commands

  -- launcher
  cmdLauncher   = "rofi -show run"

  -- terminals
  cmdTerminal   = "konsole"
  cmdTerminator = "terminator"

  -- printScreen
  cmdScreenshot = "spectacle"

  -- lock screen
  cmdLock       = "i3lock -f -r" ++ var__BlurRadius ++ " -s" ++ var__BlurSigma

  -- media
  cmdPlayPause  = "playerctl play-pause"
  cmdNext       = "playerctl next"
  cmdPrev       = "playerctl previous"
  cmdVolUp      = "amixer -q set Master " ++ var__VolumeStep ++ "+"
  cmdVolDown    = "amixer -q set Master " ++ var__VolumeStep ++ "-"
  cmdToggleMute = "amixer -q set Master toggle"

