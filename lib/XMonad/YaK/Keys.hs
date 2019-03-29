module XMonad.YaK.Keys (
  -- testing
  foo, function1, keys
) where
  import qualified XMonad
  import qualified XMonad.StackSet as W
--  import XMonad.Util.EZConfig(additionalKeys)

  myModMask = mod4Mask
  --altMask = (mod1Mask || mod4Mask)
  altMask = mod1Mask
  altgrMask = mod5Mask


  ------------------------------------------------------------------------
  -- yak

  spawnToWorkspace :: String -> String -> X ()
  spawnToWorkspace workspace program = do
    spawn program
    windows $ W.greedyView workspace


  cmdTerminator = "terminator"
  --cmdSpotifyPlayPause = "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"
  cmdPlayPause = "playerctl play-pause"
  cmdNext      = "playerctl next"
  cmdPrev      = "playerctl previous"



  function1 = error "function1: Not implemented yet!"
  foo = "chromium"
--------------------------------------------------------------------------------------------------
-- yakkeys
  keys =
    [
    -- desktops
        ((altMask, xK_a),                 windows $ W.greedyView "web")
      , ((altMask, xK_x),                 windows $ W.greedyView "idea")
      , ((altMask, xK_z),                 windows $ W.greedyView "term")
      , ((altMask, xK_c),                 windows $ W.greedyView "misc")
      , ((altMask, xK_s),                 windows $ W.greedyView "music")
      , ((altMask .|. controlMask, xK_a), windows $ W.greedyView "video")
      , ((altMask .|. controlMask, xK_z), windows $ W.greedyView "mail")
      , ((altMask .|. controlMask, xK_x), windows $ W.greedyView "icq")
      , ((altMask .|. controlMask, xK_c), windows $ W.greedyView "etc")

      -- Close focused window.
      , ((modMask .|. shiftMask, xK_c),   kill)
      , ((modMask .|. shiftMask, xK_a),   kill)

      -- yakscratch
    --  , ((modMask, xK_p),                 scratchpadSpawnActionTerminal cmdTerminator)

      -- volume
      , ((altMask, xK_Page_Up),           spawn "amixer -q set Master 10%+")
      , ((altMask, xK_Page_Down),         spawn "amixer -q set Master 10%-")

      -- spotify
      , ((altMask, xK_l),                 spawn cmdPlayPause)
      , ((altMask, xK_p),                 spawn cmdNext)
      , ((altMask, xK_o),                 spawn cmdPrev)

      -- apps
      , ((modMask .|. altMask, xK_s),     spawnToWorkspace "icq"  "slack")
      , ((modMask .|. altMask, xK_g),     spawnToWorkspace "icq"  "telegram-desktop")
      , ((modMask .|. altMask, xK_i),     spawnToWorkspace "idea" "idea")
      , ((modMask .|. altMask, xK_p),     spawn "pavucontrol")
      , ((modMask .|. altMask, xK_v),     spawn "vivaldi")
      , ((modMask .|. altMask, xK_t),     spawn cmdTerminator)

    -- move to a different module
      , ((modMask, xK_b),     spawn foo)

      , ((altMask, xK_t),                 spawn cmdTerminator)
      , ((altMask, xK_g),                 spawn "geany")

      , ((controlMask .|. shiftMask, xK_Escape), spawnToWorkspace "etc"  "ksysguard")

      -- move focus
      , ((altMask, xK_q),
         windows W.focusDown)
      , ((altMask, xK_w),
         windows W.focusUp)

    ]
--------------------------------------------------------------------------------------------------
