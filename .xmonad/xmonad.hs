import System.IO
import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeysP)
import XMonad.Layout.MultiToggle
import XMonad.Layout.MultiToggle.Instances
import XMonad.Layout.Named
import XMonad.Config.Desktop

baseConfig = desktopConfig

main = do
  xmproc <- spawnPipe "xmobar"
  xmonad $ baseConfig
    { manageHook         = manageDocks <+> manageHook defaultConfig
    , layoutHook         = avoidStruts $ layoutHook defaultConfig
    , terminal           = "urxvt"
    , borderWidth        = 2
    , modMask            = mod4Mask
    , normalBorderColor  = "#333333"
    , focusedBorderColor = "#cd8b00"
    , logHook            = dynamicLogWithPP $ xmobarPP
      { ppOutput         = hPutStrLn xmproc
      , ppTitle          = xmobarColor "green" "" . shorten 50
      }
    , startupHook        = do
        spawn "google-chrome-stable"
    } `additionalKeysP`
    [ (("<XF86AudioLowerVolume>"), spawn "amixer set Master 4-")
    , (("<XF86AudioRaiseVolume>"), spawn "amixer set Master 4+")
    , (("<XF86AudioMute>")       , spawn "amixer set Master toggle")
    ]
