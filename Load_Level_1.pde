/*
  This class contains all the information needed to render each
  level in the game. It has the location of all the platforms and sprites
  as well as their size and if they are moving across the screen.
*/

void loadLevel1(){
  ///////obstical parameters: (xPosition, Yposition, Width, Height, xMovement, xUpperLimit, xLowerLimit, yMovement, yUpperLimit, yLowerLimit, obstical type)////////
  
  // Creates a multi-dimensional array with three levels and all the objects in those levels
  obsticles = new object[4][25];
  int grassWidth = 60;
  int grassHeight = 80;
  int rockHeight = 80;
  int rockWidth = 110;
  int logHeight = 55;
  int logWidth = 55;
  int buttonWidth = 30;
  int buttonHeight = 25;
  
  // level 1
  obsticles[0][0] = new object(0,530,1200,175,0,0,0,0,0,0,0); // ground 1
  obsticles[0][1] = new object(100,100,0,0,0,0,0,0,0,0,12); // instructions
  obsticles[0][2] = new object(100,100,0,0,0,0,0,0,0,0,7); // get over here
  obsticles[0][3] = new object(-10,-10,10,700,0,0,0,0,0,0,7); // left hidden wall
  
  // level 2 (Shrek practice)
  obsticles[1][0] = new object(0,530,1200,175,0,0,0,0,0,0,0); // ground 1
  obsticles[1][1] = new object(-10,-10,10,700,0,0,0,0,0,0,7); // left hidden wall
  
  obsticles[1][2] = new object(200,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // first grass
  obsticles[1][3] = new object(270,450,rockWidth,rockHeight,0,0,0,0,0,0,2); //rock
  obsticles[1][4] = new object(390,480,logWidth,logHeight,0,0,0,0,0,0,3); // first log
  obsticles[1][5] = new object(450,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // second grass
  obsticles[1][6] = new object(450,380,grassWidth,grassHeight,0,0,0,0,0,0,1); //  grass
  obsticles[1][7] = new object(520,480,grassWidth,grassHeight,0,0,0,0,0,0,3); //  second log
  obsticles[1][8] = new object(520,420,grassWidth,grassHeight,0,0,0,0,0,0,3); //   log
  obsticles[1][9] = new object(590,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // third grass
  obsticles[1][10] = new object(660,450,rockWidth,rockHeight,0,0,0,0,0,0,2); //second  rock
  obsticles[1][11] = new object(780,480,logWidth,logHeight,0,0,0,0,0,0,3); // third log
  obsticles[1][12] = new object(850,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // fourth grass
  obsticles[1][13] = new object(920,450,rockWidth,rockHeight,0,0,0,0,0,0,2); //third rock
  obsticles[1][14] = new object(1040,480,logWidth,logHeight,0,0,0,0,0,0,3); // fourth log  
  
  obsticles[1][15] = new object(100,100,0,0,0,0,0,0,0,0,7); // get over here
  obsticles[1][16] = new object(100,100,0,0,0,0,0,0,0,0,14); // instructions
  obsticles[1][17] = new object(100,100,0,0,0,0,0,0,0,0,16); // your heath
  obsticles[1][18] = new object(100,100,0,0,0,0,0,0,0,0,17); // settings
  obsticles[1][19] = new object(100,100,0,0,0,0,0,0,0,0,23); // waffles
  
  // level 3 (Donkey practice)
  obsticles[2][0] = new object(0,530,1200,175,0,0,0,0,0,0,0); // ground 1
  obsticles[2][1] = new object(-10,-10,10,700,0,0,0,0,0,0,7); // left hidden wall
 
  obsticles[2][2] = new object(200,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // first grass
  obsticles[2][3] = new object(270,450,rockWidth,rockHeight,0,0,0,0,0,0,2); //rock
  obsticles[2][4] = new object(390,480,logWidth,logHeight,0,0,0,0,0,0,3); // first log
  obsticles[2][5] = new object(450,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // second grass
  obsticles[2][6] = new object(450,380,grassWidth,grassHeight,0,0,0,0,0,0,1); //  grass
  obsticles[2][7] = new object(520,480,grassWidth,grassHeight,0,0,0,0,0,0,3); //  second log
  obsticles[2][8] = new object(520,420,grassWidth,grassHeight,0,0,0,0,0,0,3); //   log
  obsticles[2][9] = new object(590,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // third grass
  obsticles[2][10] = new object(710,0,1200,500,0,0,0,0,0,0,0); // box
  obsticles[2][11] = new object(465,360,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); //  waffle
  
  
  obsticles[2][12] = new object(100,100,0,0,0,0,0,0,0,0,7); // get over here
  obsticles[2][13] = new object(100,100,0,0,0,0,0,0,0,0,18); // instructions


  // level 4
  obsticles[3][0] = new object(0,530,1200,175,0,0,0,0,0,0,0); // ground 1
  obsticles[3][1] = new object(1175,170,25,580,0,0,0,0,0,0,0); // wall right
  obsticles[3][2] = new object(0,170,25,580,0,0,0,0,0,0,0); // wall left
  obsticles[3][3] = new object(100,100,0,0,0,0,0,0,0,0,19); // now you are ready to play the game
  
  //// Menu
  //obsticles[1][3][0] = new object(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4);
  //obsticles[1][3][1] = new object(0, 530, 575, 175, 0, 0, 0, 0, 0, 0, 0);
}
