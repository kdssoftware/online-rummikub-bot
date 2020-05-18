watchButtonXpos = 160
watchButtonYpos = 631
claimButtonXpos = 645
claimButtonYpos = 790
getCoinsButtonXpos = 725
getCoinsButtonYpos = 345
getCoinsButtonColor = "0x8D6D58"
okButtonXpos = 455
okButtonYpos = 682
waitTimeToLoadAds = 10000 ;gives the ads 10 seconds to load before reload the game
^!f::
  MouseMove, getCoinsButtonXpos, getCoinsButtonYpos
  Click
  runAds = 1
  while(runAds = 1){
    MouseMove, watchButtonXpos, watchButtonYpos ;mouse to watch
    Click
    adIsShowing = 1
    Sleep, waitTimeToLoadAds
    while(adIsShowing = 1)  {
      MouseMove, claimButtonXpos, claimButtonYpos ;mouse over claim reward
      PixelGetColor, color, claimButtonXpos, claimButtonYpos
      if (color = "0x1CA069"){
        adIsShowing = 0
      }
      waitForReloadSite = 0
      if(color = "0xFF9966"){
        waitForReloadSite = 1
        Click
        Send ^{F5}
      }
      while(waitForReloadSite = 1){
        PixelGetColor, colorGetCoins, getCoinsButtonXpos, getCoinsButtonXpos
        if(colorGetCoins = getCoinsButtonColor){
          waitForReloadSite = 0
          adIsShowing = 0
          MouseMove, getCoinsButtonXpos, getCoinsButtonYpos
          Click
          Sleep, 500
        }
      }
    }
    MouseMove, claimButtonXpos, claimButtonYpos ;mouse over claim reward
    Click
    Sleep, 900
    MouseMove, okButtonXpos, okButtonYpos ;mouse to ok
    Click
    ;Sleep, 500
    MouseMove, watchButtonXpos, watchButtonYpos ;mouse to watch
    ;Sleep, 500
  }
return
^!e::
  MouseGetPos, xpos, ypos
  PixelGetColor, color, %xpos%, %ypos%
  MsgBox, %color% is at x: %xpos% y: %ypos%.
return

^!x::
  ExitApp
return
