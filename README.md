# vwf_screen_turns_off_example

# Problem
When selecting the "Fonts" debug option, my program prints a very long string with toxa's VWF engine. There is a noticable delay and during this time the screen appears to be turned off (see the LCDC byte). I'm not sure how this is happening. I found this while trying to decide how much of the VWF library I could use for my own VWF processes that fire during the VBlank handler.

# Steps to reproduce
1) Boot the rom (I used BGB and Emulicious to test).
2) Press Start at the title screen. This will load the debug room menu.
3) Move the cursor to the word "Fonts" with the D-pad.
4) Press the A button to enter the Fonts debug menu.
5) Note the delay with the vwf engine rendering text. If you have a VRAM viewing tool open, you can see the text rendering while the screen is off.
6) If you wish to repeat the process, press the B button to return to the debug menu and proceed from step 3.

# Notes
* I only just came back to working on this project after some months off, so my GBDK is a touch outdated. I think it's 4.0.6 or thereabouts.
* I made this example project from trimming a lot of code out of my main project so that I'm not misrepresenting the behavior too much.
* Since I specifically mentioned using hUGEDriver I left the music debug scene in.
* I use JetBrains CLion for my IDE, but I don't think this should have any effects on the behavior.
* Please feel free to offer constructive criticism about my code style/structure, but also that's not the thing I'm interested in with this example; what I do works for me.
* The CoCa_GB_v2 font is a VWF font I made with an eye towards readability that I intend to release later for others to use.
* I left in my game's placeholder, medium-effort title screen because I don't want to make a new one just for this example project. I hope you like it.
* If you have more questions not covered here please don't hesitate to ask me.

# Licenses
* Minimal3x5 and Minimal5x7 fonts by kheftel (https://opengameart.org/content/minimalist-pixel-fonts) used under CC3.0
* Toxa's VWF library
* GBDK2020 
* Toxa's VGM2SFX library
* hUGEDriver 1.0b9
* Font_condensed https://edo999.itch.io/condensed-fonts
