Online-rummikub-bot
--

Download AutoHotKey and run the rummy.ahk file (while on the main menu screen).


Shortcuts:
-

Ctrl+Alt+f: start watching ads

Ctrl+Alt+e: get color and postion of the mouse

Ctrl+Alt+x: exit

Set up
-
Because every screen is different, you need to fill in the variables in the rummy.ahk file (open with notepad).

Start up the rummy.ahk script, and use the Ctrl+Alt+e keys to get the color and position of the buttons.


These are the variables you need to fill in:

`watchButtonXpos` = watch button (in the 'get coins menu'), x position

`watchButtonYpos` = watch button (in the 'get coins menu'), y position

`claimButtonXpos` = claim reward button, x position (be sure to put your mouse on the green part, it checks the color)

`claimButtonYpos` = claim reward button, y position (be sure to put your mouse on the green part, it checks the color)

`getCoinsButtonXpos` = get coins button (in the top left), x position

`getCoinsButtonYpos` = get coins button (in the top left), y position

`getCoinsButtonColor`  = get coins button (in the top left), its color (example "0x8D6D58" )

`okButtonXpos` = ok button (after claiming the rewards), x position

`okButtonYpos` = ok button (after claiming the rewards), x position

`waitTimeToLoadAds` (no need to change this, only if your internet is bad make it longer). this is amount of ms that waits to load the ad
