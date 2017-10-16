# Wizard Battle Arena

## What is this ?

This repository holds the code for the WizardBattleArena game. The game is a bomberman-like with [Liberated Pixel Cup](http://lpc.opengameart.org/) graphics (In short, all graphics are licensed under [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)). A preview of the game can be seen on youtube [here](https://www.youtube.com/watch?v=srPdFgbyS6s).

The game is entirely scripted from [Pharo](https://pharo.org/). For high-performance graphics and responsiveness, the code relies on [SDL2](https://www.libsdl.org/download-2.0.php) to manage OS windows and keyboard event handling and on [Cairo](https://www.cairographics.org/) to draw the 2D graphics on the SDL2 window surface.

Currently the game is more meant as a demo to show how to build native 2D interactive applications running easily at 50 fps from Pharo. However, multiple people played and had a lot of fun: this could be the basis of a very good video game.

## Package overview

There are two packages at the root. The Demos package includes ready-to-go games that I use for demos. The packages are not meant to be changed, unless you're updating the game for a specific OS version. The Project package includes two folders, the ressources folder with all the ressources used by the game (images, music, etc.) and the src folder with the source code. The src folder is itself divided into Wizard-Battle-Arena, the package holding the game, and Wizard-Battle-Arena-Extras, the package holding future or experimental features.

## Building a development runtime

###OS and base image

####Ubuntu 64

git co https://github.com/clementbera/wizard-battle-arena

cd wizard-battle-arena/Project

wget -O- get.pharo.org/64/61+vm | bash

./pharo-ui Pharo.image 

####Ubuntu 32

Should work out the same way as Ubuntu 64, with a 32 bits runtime, even though nobody has tried (I tried 32bits runtime on Ubuntu 64 with 32 bits libs and it worked). Use this line instead:
wget -O- get.pharo.org/61+vm | bash

Else follow Ubuntu 64 instructions.

####Others

There's a known working version on Mac, which is based on a Pharo 5-alpha image:

*Image*
Pharo5.0
Latest update: #50155

*VM*
NBCoInterpreter NativeBoost-CogPlugin-EstebanLorenzano.21 uuid: 4d9b9bdf-2dfa-4c0b-99eb-5b110dadc697 Apr  2 2015
NBCogit NativeBoost-CogPlugin-EstebanLorenzano.21 uuid: 4d9b9bdf-2dfa-4c0b-99eb-5b110dadc697 Apr  2 2015
https://github.com/pharo-project/pharo-vm.git Commit: 32d18ba0f2db9bee7f3bdbf16bdb24fe4801cfc5 Date: 2015-03-24 11:08:14 +0100 By: Esteban Lorenzano <estebanlm@gmail.com> Jenkins build #14904

But you need to update both OSWindow-Core and OSWindow-SDL2 to version 69 by Merwann to make it work.

###Loading and running the game

####Loading



####Running

In a playground, run this DoIt:

WizardBattleArena start

If problems:
In general you need to update Cairo.

