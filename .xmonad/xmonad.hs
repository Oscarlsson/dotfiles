import XMonad
import XMonad.Hooks.ManageHelpers
import XMonad.Config.Gnome
import XMonad.Layout.NoBorders
    
myManageHook = composeAll [
    (className =? "Pidgin" <&&> (title =? "Pidgin" <||> title =? "Accounts")) --> doCenterFloat
  , (className =? "Pidgin") --> doShift "3"
  , (className =? "Gcr-prompter") --> doCenterFloat
  , (className =? "Xfce4-notifyd" -->  doIgnore)
  , isFullscreen --> doFullFloat
   ]
                     
main = xmonad $ gnomeConfig {
  modMask            = mod4Mask
  , layoutHook       = smartBorders (layoutHook gnomeConfig)
  , borderWidth      = 2
  , normalBorderColor  = "#cccccc"
  , focusedBorderColor = "#3300ff"
  , manageHook       = myManageHook <+> manageHook gnomeConfig
  , terminal = "gnome-terminal --hide-menubar"
  }