import XMonad
import XMonad.Hooks.ManageHelpers
import XMonad.Config.Gnome
import XMonad.Layout.NoBorders
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ICCCMFocus (takeTopFocus) 

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
  , focusFollowsMouse   = False
  , borderWidth      = 1
  , normalBorderColor  = "#cccccc"
  , focusedBorderColor = "#3300ff"
  , manageHook       = myManageHook <+> manageHook gnomeConfig
  , terminal = "xterm"
  , logHook = takeTopFocus
  , startupHook = setWMName "LG3D" }

