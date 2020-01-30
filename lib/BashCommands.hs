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

, cmdAudioCfg

, cmdToasty

) where

-------------------------------------------------------------------------------------------------
-- variables

  var__VolumeStep = "5%"

-------------------------------------------------------------------------------------------------
-- commands

  -- launcher
  cmdLauncher   = "rofi -show run"

  -- terminals
  cmdTerminal   = "konsole"
  cmdTerminator = "terminator"

  -- screenshot
  cmdScreenshot = "spectacle"

  -- lock screen
  cmdLock       = "i3lock -i ~/.dot/wallpaper.jpg"

  -- media
  cmdPlayPause  = "playerctl play-pause"
  cmdNext       = "playerctl next"
  cmdPrev       = "playerctl previous"
  cmdVolUp      = "amixer -q set Master " ++ var__VolumeStep ++ "+"
  cmdVolDown    = "amixer -q set Master " ++ var__VolumeStep ++ "-"
  cmdToggleMute = "amixer -q set Master toggle"

  cmdAudioCfg   = "pavucontrol"

  cmdToasty     = "notify-send \"Lorem ipsum\" \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\""

