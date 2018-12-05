// This cleans up the main class by loading all of the images in a separate class.
PImage bg;

PImage shrekRight;
PImage shrekLeft;
PImage shrekStill;

PImage shrekPunching;

PImage donkeyRight;
PImage[] donkeyRightMoving;
PImage donkeyLeft;
PImage donkeyStill;


PImage grass;
PImage logs;
PImage rocks;
PImage swampwater;
PImage outhouse;
PImage backgroundtree;
PImage button;

PImage startscreen;



PImage menu;

void image_Loader() {
  shrekRight = loadImage("Images/Shrek/ShrekIdleSprite2.png");
  shrekLeft = loadImage("Images/Shrek/ShrekIdleLeft.png");
  shrekPunching = loadImage("Images/Shrek/shrekpunching.png");
  shrekStill = shrekRight;
  grass = loadImage("Images/Objects/BreakableGrassSprite.png");
  rocks = loadImage("Images/Objects/breakableRockSprite.png");
  logs = loadImage("Images/Objects/BreakableLogsSprite.png");
  swampwater = loadImage("Images/Miscellaneous/swampwater.png");
  outhouse = loadImage("Images/Miscellaneous/outhouse.png");
  backgroundtree = loadImage("Images/Miscellaneous/backgroundtree.png");
  
  donkeyLeft = loadImage("Images/Donkey/DonkeyIdleLeft.png");
  donkeyRight = loadImage("Images/Donkey/DonkeySpriteIdle2.png");
  
  donkeyRightMoving = new PImage[6];
  donkeyRightMoving[0] = loadImage("Images/Donkey/donkey_Moving_1.gif");
  donkeyRightMoving[1] = loadImage("Images/Donkey/frame_1_delay-0.1s.gif");
  donkeyRightMoving[2] = loadImage("Images/Donkey/frame_2_delay-0.1s.gif");
  donkeyRightMoving[3] = loadImage("Images/Donkey/frame_3_delay-0.1s.gif");
  donkeyRightMoving[4] = loadImage("Images/Donkey/frame_4_delay-0.1s.gif");
  donkeyRightMoving[5] = loadImage("Images/Donkey/frame_5_delay-0.1s.gif");
  
  donkeyStill = donkeyRight;
  startscreen = loadImage("Images/Miscellaneous/ShrekTitleScreen.png");
  

  outhouse = loadImage("Images/Miscellaneous/outhouse.png"); 
  menu = loadImage("Images/Miscellaneous/ShrekTitleScreen.png");
  button = loadImage("Images/Objects/button.png");
}
