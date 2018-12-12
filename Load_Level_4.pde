/*
  This class contains all the information needed to render each
  level in the game. It has the location of all the platforms and sprites
  as well as their size and if they are moving across the screen.
*/

void loadLevel4(){
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
  obsticles[0][1] = new object(1175,170,25,580,0,0,0,0,0,0,0); // wall right
  obsticles[0][2] = new object(0,170,25,580,0,0,0,0,0,0,0); // wall left
  obsticles[0][3] = new object(100,100,0,0,0,0,0,0,0,0,22); // Conclusion
  obsticles[0][4] = new object(200,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][5] = new object(240,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][6] = new object(280,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][7] = new object(320,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][8] = new object(360,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][9] = new object(400,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][10] = new object(440,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][11] = new object(480,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][12] = new object(520,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][13] = new object(560,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][14] = new object(600,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][15] = new object(640,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][16] = new object(680,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][17] = new object(720,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][18] = new object(760,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][19] = new object(800,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][20] = new object(840,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][21] = new object(880,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][22] = new object(920,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][23] = new object(960,530,80,100,0,0,0,0,0,0,24); // Fiona
  obsticles[0][24] = new object(1000,530,80,100,0,0,0,0,0,0,24); // Fiona

  
  //// Menu
  //obsticles[1][3][0] = new object(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4);
  //obsticles[1][3][1] = new object(0, 530, 575, 175, 0, 0, 0, 0, 0, 0, 0);
}
