# What is this ?

This repository holds the code for the WizardBattleArena game. A preview of the game can be seen on youtube (Click the image to watch the video):

[![WizardBattleArenaPreview](https://img.youtube.com/vi/srPdFgbyS6s/0.jpg)](https://www.youtube.com/watch?v=srPdFgbyS6s)

The game is a bomberman-like with [Liberated Pixel Cup](http://lpc.opengameart.org/) graphics (In short, all graphics are licensed under [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)). The game itself is under GPLv2 licence. 

The game is entirely written/scripted from [Pharo](https://pharo.org/). For high-performance graphics and responsiveness, the code relies on [SDL2](https://www.libsdl.org/download-2.0.php) to manage OS windows and keyboard event handling and on [Cairo](https://www.cairographics.org/) to draw the 2D graphics on the SDL2 window surface.

Currently the game is more meant as a demo to show how to build native 2D interactive applications running easily at 50 fps from Pharo. However, multiple people played and had a lot of fun: this could be the basis of a very good video game.

# Package overview

There are two packages at the root. The Demos package includes ready-to-go games that I use for demos. The packages are not meant to be changed, unless you're updating the game for a specific OS version. The Project package includes two folders, the ressources folder with all the ressources used by the game (images, music, etc.) and the src folder with the source code. The src folder is itself divided into Wizard-Battle-Arena, the package holding the game, and Wizard-Battle-Arena-Extras, the package holding future or experimental features.

In general if you want to work on the game you want to checkout only the Project package and if you want to demo it you want to checkout only one of the demo. Checking everything out takes a significant amount of time, don't do that.

# Demo

To demo, download one of the demo fodler and use the scripts (startMac or startLinux).

# Building a development runtime

## OS and base image

*Ubuntu 64*

``git clone https://github.com/clementbera/wizard-battle-arena``

cd wizard-battle-arena/Project

wget -O- get.pharo.org/64/61+vm | bash

./pharo-ui Pharo.image

*Ubuntu 32*

Should work out the same way as Ubuntu 64, with a 32 bits runtime, even though nobody has tried (I tried 32bits runtime on Ubuntu 64 with 32 bits libs and it worked). Use this line instead the wget line:
wget -O- get.pharo.org/61+vm | bash

*Mac OS X 10.11*

git clone https://github.com/clementbera/wizard-battle-arena

cd wizard-battle-arena/Project

Then load the following image and VM:

--- Image ---

Download http://files.pharo.org/image/50-preSpur/50155.zip

Then you need to update both OSWindow-Core and OSWindow-SDL2 to version 69 by Merwann (Monticello browser, OSWindow repository)

--- VM ---

Download http://files.pharo.org/vm/pharo/mac/stable-20150403.zip

Then you can just drag and drop the image over the VM to run it or build your own start-up scripts.

*Windows 7*

Using MinGW64, the game work when I do:

git clone https://github.com/clementbera/wizard-battle-arena

cd wizard-battle-arena/Project

curl get.pharo.org/61+vm | bash

./pharo-ui Pharo.image 

On more recent Windows, I believe it should work exactly the same way. On very recent or upcoming Windows releases, I guess there could be a problem with missing 32 bits libs. You could try using Pharo 64 bits, but on Windows there are know bugs (I'm talking mid-2017) I don't want to deal with right now. So I guess you would have to track down the missing 32 bits libs and install them somehow.

Important Note: on Windows, the SDL2 window looks awckward. It's a known annoying bug, but the game still works. You can try starting the game in full screen (Change this in WBAScreen by setting the OSWindowAttribute fullscreen to true) to avoid most of the problem.

## Loading and running the game

Make sure your image file is in the Project folder, near the src and resources folders (important for relative paths). 

Open your image with the provided VM.

*Loading*

In short, load the Wizard-Battle-Arena package in the src folder with fileTree. In long, open the Monticello Browser from the World menu. Click "+ Repository". Select "filetree://". Click "src" then "OK". Load the Wizard-Battle-Arena package.

In addition, load, if you want to, the Wizard-Battle-Arena-Extras package (unreleased and experimental contents).

*Running*

If on Pharo 6.1 (Linux and Windows typically), open a playground and run this DoIt to patch things up:

FFIExternalStructure allSubclassesDo: #rebuildFieldAccessors.

Then run this DoIt (Linux, Mac and Windows):

WizardBattleArena start

If problems:

On Linux usually you need to update Cairo, so try to update libCairo and retry.

On Mac usually the problem lies with SDL2, so try to install / update it and retry.

On Windows no idea, so good luck :-).

If you've installed something, restart your computer, it may help too (for some reason it helped me on Mac to deal with some SDL2 bugs after updating the librairies).

Have fun toying around with the game

