module Utils (

  spawnToWorkspace
--, yakNotify

) where
  import XMonad

  import qualified XMonad.StackSet as W

  spawnToWorkspace :: String -> String -> X ()
  spawnToWorkspace workspace program = do
    spawn program
    windows $ W.greedyView workspace

--  yakNotifyStr :: String -> String -> String
--  yakNotifyStr title message
--    "notify-send " ++ title ++ " " ++ message
--
--  yakNotify :: String -> String -> X ()
--  yakNotify title message
--    spawn yakNotifyStr title message
