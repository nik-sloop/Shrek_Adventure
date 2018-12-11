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
  obsticles[0][0] = new object(0,530,575,175,0,0,0,0,0,0,0); // ground 1
  obsticles[0][1] = new object(800,530,400,175,0,0,0,0,0,0,0); // ground 2
  //obsticles[0][2] = new object(630,355,80,10,0,0,0,1,300,400,0);
  //obsticles[0][3] = new object(630,155,80,10,0,0,0,1,155,200,0); // cancel
  obsticles[0][4] = new object(500,400,grassWidth,grassHeight,0,0,0,0,0,0,1); // second grass top
  obsticles[0][5] = new object(950,0,250,500,0,0,0,0,0,0,0); // first box
  obsticles[0][6] = new object(350,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // first grass
  obsticles[0][7] = new object(200,475,logWidth,logHeight,0,0,0,0,0,0,3); // first log
  obsticles[0][8] = new object(500,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // second grass bottom
  obsticles[0][9] = new object(800,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // third grass bottom
  obsticles[0][10] = new object(800,400,grassWidth,grassHeight,0,0,0,0,0,0,1); // third grass middle
  obsticles[0][11] = new object(800,350,grassWidth,grassHeight,0,0,0,0,0,0,1); // third grass top
  obsticles[0][12] = new object(0,0,250,450,0,0,0,0,0,0,0); // wall
  obsticles[0][13] = new object(450,505, buttonWidth, buttonHeight,0,0,0,0,0,0,4); // button
  obsticles[0][14] = new object(100,100,0,0,0,0,0,0,0,0,9); // Stage 1


  
  // level 4
  obsticles[3][0] = new object(0,530,1200,175,0,0,0,0,0,0,0); // ground 1
  obsticles[3][1] = new object(1175,170,25,580,0,0,0,0,0,0,0); // wall right
  obsticles[3][2] = new object(0,170,25,580,0,0,0,0,0,0,0); // wall left
  
  //// Menu
  //obsticles[1][3][0] = new object(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4);
  //obsticles[1][3][1] = new object(0, 530, 575, 175, 0, 0, 0, 0, 0, 0, 0);
}
