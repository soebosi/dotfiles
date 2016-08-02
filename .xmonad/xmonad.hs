import System.IO
import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeysP)
import XMonad.Layout.MultiToggle
import XMonad.Layout.MultiToggle.Instances
import XMonad.Layout.OneBig
import XMonad.Layout.Named
import XMonad.Layout.Spacing
import XMonad.Config.Desktop

baseConfig = desktopConfig

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

myBar = "xmobar"

myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

myConfig = baseConfig
    { manageHook         = manageDocks <+> manageHook defaultConfig
    , layoutHook         = (spacing 4 $ Tall 1 (1/100) (68/100)) ||| Full
    , terminal           = "urxvt"
    , borderWidth        = 1
    , modMask            = mod4Mask
    , normalBorderColor  = "#333333"
    , focusedBorderColor = "#aaaaaa"
    , startupHook        = do
        spawn "google-chrome-stable"
        spawn "feh --randomize --bg-fill ~/pictures/wallpaper/*"
    } `additionalKeysP`
    [ (("<XF86AudioLowerVolume>"), spawn "amixer set Master 4-")
    , (("<XF86AudioRaiseVolume>"), spawn "amixer set Master 4+")
    , (("<XF86AudioMute>")       , spawn "amixer set Master toggle")
    ]
