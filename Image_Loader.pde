// This cleans up the main class by loading all of the images in a separate class.
PImage bg;

PImage shrekRight;
PImage shrekLeft;
PImage shrekStill;

PImage shrekPunching;

PImage donkeyRight;
PImage[] donkeyRightMoving;
PImage[] donkeyLeftMoving;
PImage[] shrekRightMoving;
PImage[] shrekLeftMoving;

PImage donkeyLeft;
PImage donkeyStill;

PImage grass;
PImage logs;
PImage rocks;
PImage swampwater;
PImage outhouse;
PImage backgroundtree;
PImage button;

PImage collectwaffles;

PImage startscreen;

PImage worldMap;

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
  donkeyRightMoving[0] = loadImage("Images/Donkey/donkeywalkingR1.gif");
  donkeyRightMoving[1] = loadImage("Images/Donkey/donkeywalkingR2.gif");
  donkeyRightMoving[2] = loadImage("Images/Donkey/donkeywalkingR3.gif");
  donkeyRightMoving[3] = loadImage("Images/Donkey/donkeywalkingR4.gif");
  donkeyRightMoving[4] = loadImage("Images/Donkey/donkeywalkingR5.gif");
  donkeyRightMoving[5] = loadImage("Images/Donkey/donkeywalkingR6.gif");
  
  donkeyLeftMoving = new PImage[6];
  donkeyLeftMoving[0] = loadImage("Images/Donkey/donkeywalkingL1.gif");
  donkeyLeftMoving[1] = loadImage("Images/Donkey/donkeywalkingL2.gif");
  donkeyLeftMoving[2] = loadImage("Images/Donkey/donkeywalkingL3.gif");
  donkeyLeftMoving[3] = loadImage("Images/Donkey/donkeywalkingL4.gif");
  donkeyLeftMoving[4] = loadImage("Images/Donkey/donkeywalkingL5.gif");
  donkeyLeftMoving[5] = loadImage("Images/Donkey/donkeywalkingL6.gif");
  
  shrekRightMoving = new PImage[5];
  shrekRightMoving[0] = loadImage("Images/Shrek/shrekwalking1.gif");
  shrekRightMoving[1] = loadImage("Images/Shrek/shrekwalking2.gif");
  shrekRightMoving[2] = loadImage("Images/Shrek/shrekwalking3.gif");
  shrekRightMoving[3] = loadImage("Images/Shrek/shrekwalking4.gif");
  shrekRightMoving[4] = loadImage("Images/Shrek/shrekwalking5.gif");
  
  shrekLeftMoving = new PImage[5];
  shrekLeftMoving[0] = loadImage("Images/Shrek/shrekwalkingL1.png");
  shrekLeftMoving[1] = loadImage("Images/Shrek/shrekwalkingL2.png");
  shrekLeftMoving[2] = loadImage("Images/Shrek/shrekwalkingL3.png");
  shrekLeftMoving[3] = loadImage("Images/Shrek/shrekwalkingL4.png");
  shrekLeftMoving[4] = loadImage("Images/Shrek/shrekwalkingL5.png");
  
  donkeyStill = donkeyRight;
  startscreen = loadImage("Images/Miscellaneous/ShrekTitleScreen.png");
  
  collectwaffles = loadImage("Images/Objects/wafflecollectible.png");

  outhouse = loadImage("Images/Miscellaneous/outhouse.png"); 
  menu = loadImage("Images/Miscellaneous/ShrekTitleScreen.png");
  button = loadImage("Images/Objects/button.png");
  
  worldMap = loadImage("Images/Miscellaneous/shrekmap.png");
  worldMap.resize(width,height);
}
