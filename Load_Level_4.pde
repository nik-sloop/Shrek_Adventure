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
  
  //// Menu
  //obsticles[1][3][0] = new object(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4);
  //obsticles[1][3][1] = new object(0, 530, 575, 175, 0, 0, 0, 0, 0, 0, 0);
}
