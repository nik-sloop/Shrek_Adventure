/*
  This class contains all the information needed to render each
  level in the game. It has the location of all the platforms and sprites
  as well as their size and if they are moving across the screen.
*/

  int grassWidth = 60;
  int grassHeight = 80;
  int rockHeight = 80; 
  int rockWidth = 110; 
  int logHeight = 55;
  int logWidth = 55;
  int buttonWidth = 30;
  int buttonHeight = 25;
  int wafflesWidth = 15;
  int wafflesHeight = 15;

void loadLevel3(){
  ///////obstical parameters: (xPosition, Yposition, Width, Height, xMovement, xUpperLimit, xLowerLimit, yMovement, yUpperLimit, yLowerLimit, obstical type)////////
  
  // Creates a multi-dimensional array with three levels and all the objects in those levels
  obsticles = new object[5][55];
  
  //Shrek platform height = 60, (log 470)
  //Donkey platform height = 100, (log 430),jump range x length= 200
  //grass = 400 on first platform, 450 on ground, length of grass is 50
  //stack grass = -50
  //new object(200,475,logWidth,logHeight,0,0,0,0,0,0,3); // first log
  //new object(500,400,grassWidth,grassHeight,0,0,0,0,0,0,1); // second grass top
  //new object(150,450,rockWidth,rockHeight,0,0,0,0,0,0,2); //rock
  //new object(300,950,0,0,0,0,0,0,0,0,6); // text
  //new object(910, 400,buttonWidth,buttonHeight,0,0,0,0,0,0,4); // third button 
  //new object(650,530,100,10,0,650,700,1,0,0,0); // moving platform xMovement, xUpperLimit, xLowerLimit, yMovement, yUpperLimit, yLowerLimit
  
  //level 1
  obsticles[0][0] = new object(0,530,200,175,0,0,0,0,0,0,0); // ground 1
  obsticles[0][1] = new object(400,530,200,175,0,0,0,0,0,0,0); // ground 2
  obsticles[0][2] = new object(850,530,200,175,0,0,0,0,0,0,0); // ground 3
  obsticles[0][3] = new object(1100,0,100,370,0,0,0,0,0,0,0); // wall
  obsticles[0][4] = new object(250,470,100,10,0,0,0,0,0,0,0); // first platform
  obsticles[0][5] = new object(650,470,50,10,0,0,0,1,400,500,0); // second platform
  obsticles[0][6] = new object(750,470,80,10,0,0,0,0,0,0,0); // third platform
  obsticles[0][7] = new object(1100,470,110,10,0,0,0,0,0,0,0); // fourth platform
  obsticles[0][8] = new object(750,370,80,10,0,0,0,0,0,0,0); // donkey first platform
  obsticles[0][9] = new object(880,270,80,10,0,0,0,0,0,0,0); // donkey second platform
  obsticles[0][10] = new object(1010,170,80,10,0,0,0,0,0,0,0); // donkey third platform
  obsticles[0][11] = new object(300, 400,grassWidth,grassHeight,0,0,0,0,0,0,1); // first grass
  obsticles[0][12] = new object(300, 350,grassWidth,grassHeight,0,0,0,0,0,0,1); // first, second grass
  obsticles[0][13] = new object(800, 400,grassWidth,grassHeight,0,0,0,0,0,0,1); // second grass
  obsticles[0][14] = new object(1000, 450,grassWidth,grassHeight,0,0,0,0,0,0,1); // third grass
  obsticles[0][15] = new object(1000, 400,grassWidth,grassHeight,0,0,0,0,0,0,1); // third, first grass
  obsticles[0][16] = new object(1000, 350,grassWidth,grassHeight,0,0,0,0,0,0,1); // third, second grass
  obsticles[0][17] = new object(1000, 300,grassWidth,grassHeight,0,0,0,0,0,0,1); // third, third grass
  obsticles[0][18] = new object(1000, 250,grassWidth,grassHeight,0,0,0,0,0,0,1); // third, fourth grass
  obsticles[0][19] = new object(1000, 200,grassWidth,grassHeight,0,0,0,0,0,0,1); // third, fifth grass
  obsticles[0][20] = new object(470, 510,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); // first waffle 
  obsticles[0][21] = new object(1040, 150,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); // second waffle 
  obsticles[0][22] = new object(1100,1,0,0,0,0,0,0,0,0,7); // text
  obsticles[0][23] = new object(100,100,0,0,0,0,0,0,0,0,9); // Stage 1
  
  // level 2
  obsticles[1][1] = new object(170,530,150,175,0,0,0,0,0,0,0); // ground 1
  obsticles[1][2] = new object(750,530,120,175,0,0,0,0,0,0,0); // ground 2
  obsticles[1][3] = new object(970,530,300,175,0,0,0,0,0,0,0); // ground 3
  obsticles[1][4] = new object(490,390,20,340,0,0,0,0,0,0,0); // wall
  obsticles[1][5] = new object(1190,-100,30,440,0,0,0,0,0,0,0); // second wall
    
  obsticles[1][7] = new object(-100,0,10,500,0,0,0,0,0,0,0); // fourth wall
  obsticles[1][8] = new object(0,470,130,10,0,0,0,0,0,0,0); // first platform

  obsticles[1][10] = new object(440,380,140,10,0,0,0,0,0,0,0); // third platform
  obsticles[1][11] = new object(510,530,50,10,0,0,0,0,0,0,0); //fourth platform
  obsticles[1][12] = new object(650,470,50,10,0,0,0,0,0,0,0); //fifth platform
  obsticles[1][13] = new object(890,430,70,10,0,0,0,0,0,0,0); //sixth platform
  obsticles[1][14] = new object(700,280,50,10,0,0,0,0,0,0,0); //donkey platform
  obsticles[1][15] = new object(900,180,50,10,0,0,0,0,0,0,0); //donkey second platform
  obsticles[1][16] = new object(1110,100,80,10,0,0,0,0,0,0,0); //donkey third platform
  obsticles[1][17] = new object(500,180,30,10,0,0,0,0,0,0,0); //donkey fourth platform
  obsticles[1][18] = new object(300,100,30,10,0,0,0,0,0,0,0); //donkey fifth platform
  obsticles[1][19] = new object(0,100,10,10,0,0,0,0,0,0,0); //donkey sixth platform
  obsticles[1][20] = new object(210, 450,grassWidth,grassHeight,0,0,0,0,0,0,1); // first grass
  obsticles[1][21] = new object(210, 400,grassWidth,grassHeight,0,0,0,0,0,0,1); // first, second grass
  obsticles[1][22] = new object(210, 350,grassWidth,grassHeight,0,0,0,0,0,0,1); // first, third grass
  obsticles[1][23] = new object(210, 300,grassWidth,grassHeight,0,0,0,0,0,0,1); // first, fourth grass
  obsticles[1][24] = new object(420, 300,grassWidth,grassHeight,0,0,0,0,0,0,1); // second grass
  obsticles[1][25] = new object(420, 250,grassWidth,grassHeight,0,0,0,0,0,0,1); // second, second grass
  obsticles[1][26] = new object(420, 200,grassWidth,grassHeight,0,0,0,0,0,0,1); // second, third grass
  obsticles[1][27] = new object(1130, 450,grassWidth,grassHeight,0,0,0,0,0,0,1); // third grass
  obsticles[1][28] = new object(1130, 390,grassWidth,grassHeight,0,0,0,0,0,0,1); // third second grass
  obsticles[1][29] = new object(1130, 330,grassWidth,grassHeight,0,0,0,0,0,0,1); // third third grass
  obsticles[1][30] = new object(280, 500,buttonWidth,buttonHeight,0,0,0,0,0,0,4); // first button 
  obsticles[1][31] = new object(520, 350,buttonWidth,buttonHeight,0,0,0,0,0,0,4); // second button 
  obsticles[1][32] = new object(910, 400,buttonWidth,buttonHeight,0,0,0,0,0,0,4); // third button 
  obsticles[1][33] = new object(0, 80,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); // first waffle
  obsticles[1][34] = new object(510, 510,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); // second waffle
  obsticles[1][35] = new object(1170, 310,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); // third waffle
  obsticles[1][36] = new object(1140,80,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); // fourth waffle
  obsticles[1][37] = new object(100,100,0,0,0,0,0,0,0,0,10); //Stage 2
  
  //level 3
  obsticles[2][1] = new object(0,530,150,175,0,0,0,0,0,0,0); // ground 1
  obsticles[2][2] = new object(225,130,100,10,0,0,0,0,0,0,0); // second platform
  obsticles[2][3] = new object(400,530,120,175,0,0,0,0,0,0,0); // ground 2
  obsticles[2][4] = new object(1020,610,300,175,0,0,0,0,0,0,0); // ground 3
  obsticles[2][5] = new object(400,-100,20,540,0,0,0,0,0,0,0); // wall
  obsticles[2][6] = new object(-10,-100,10,300,0,0,0,0,0,0,0); // second wall
  obsticles[2][7] = new object(630,250,20,600,0,0,0,0,0,0,0); // third wall
  obsticles[2][8] = new object(800,80,20,320,0,0,0,0,0,0,0); // fourth wall
  obsticles[2][9] = new object(980,-100,20,530, 0,0,0,0,0,0,0); // fifth wall
  obsticles[2][10] = new object(900,510,20,300,0,0,0,0,0,0,0); // sixth wall
  obsticles[2][11] = new object(1180,-100,40,630,0,0,0,0,0,0,0); // seventh wall
  obsticles[2][12] = new object(200,430,50,20,0,0,0,0,0,0,0); //donkey platform
  obsticles[2][13] = new object(380,330,20,10,0,0,0,0,0,0,0); //donkey second platform
  obsticles[2][14] = new object(220,230,40,10,0,0,0,0,0,0,0); //donkey third platform
  obsticles[2][15] = new object(380,130,20,10,0,0,0,0,0,0,0); //donkey fourth platform
  obsticles[2][16] = new object(220,50,20,10,0,0,0,0,0,0,0); //donkey fifth platform
  obsticles[2][17] = new object(0,80,20,10,0,0,0,0,0,0,0); //donkey sixth platform
  obsticles[2][18] = new object(600,580,30,10,0,0,0,0,0,0,0); // donkey seventh platform
  obsticles[2][19] = new object(520,690,20,10,0,0,0,0,0,0,0); // donkey eighth platform
  obsticles[2][20] = new object(650,550,20,10,0,0,0,0,0,0,0); // donkey nineth platform
  obsticles[2][21] = new object(1160,390,20,10,0,0,0,0,0,0,0); // donkey tenth platform
  obsticles[2][22] = new object(1000,290,20,10,0,0,0,0,0,0,0); // donkey eleventh platform
  obsticles[2][23] = new object(1160,190,20,10,0,0,0,0,0,0,0); // donkey twelveth platform
  obsticles[2][24] = new object(1000,90,20,10,0,0,0,0,0,0,0); // donkey thirteenth platform
  obsticles[2][25] = new object(150,530,70,10,1,150,330,0,0,0,0); // platform 
  //obsticles[2][26] = new object(520,530,60,10,0,0,0,0,0,0,0); //second platform 
  obsticles[2][27] = new object(420,380,20,10,0,0,0,0,0,0,0); //third platform 
  obsticles[2][28] = new object(580,230,80,20,0,0,0,0,0,0,0); //fourth platform
  obsticles[2][29] = new object(660,230,50,10,0,0,0,1,230,430,0); //fifth platform 
  //obsticles[2][30] = new object(760,230,50,10,0,0,0,1,230,80,0); //sixth platform (not moving)
  obsticles[2][31] = new object(750,430,150,15,0,0,0,0,0,0,0); // seventh platform
  obsticles[2][32] = new object(900,495,120,15,0,0,0,0,0,0,0); // eighth platform
  obsticles[2][33] = new object(410,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // grass
  obsticles[2][34] = new object(600,150,grassWidth,grassHeight,0,0,0,0,0,0,1); //second grass
  obsticles[2][35] = new object(600,100,grassWidth,grassHeight,0,0,0,0,0,0,1); //second middle grass
  obsticles[2][36] = new object(960,420,grassWidth,grassHeight,0,0,0,0,0,0,1); //third grass
  obsticles[2][37] = new object(1150,530,grassWidth,grassHeight,0,0,0,0,0,0,1); //fourth grass
  obsticles[2][38] = new object(100,100,0,0,0,0,0,0,0,0,11); //Stage 3
  obsticles[2][39] = new object(460,500,buttonWidth,buttonHeight,0,0,0,0,0,0,4); // button
  obsticles[2][40] = new object(580,200,buttonWidth,buttonHeight,0,0,0,0,0,0,4); //button 
  obsticles[2][41] = new object(860,400,buttonWidth,buttonHeight,0,0,0,0,0,0,4); //button 
  obsticles[2][42] = new object(220, 30,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); // waffle 
  obsticles[2][43] = new object(0, 60,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); // waffle 
  obsticles[2][44] = new object(420,360,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); // waffle
  obsticles[2][45] = new object(650,530,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); //waffle 
  obsticles[2][46] = new object(980,70,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); //waffle 
  obsticles[2][47] = new object(480,310,30,10,0,0,0,0,0,0,0); //cancel
  obsticles[2][48] = new object(520,450,30,10,0,0,0,0,0,0,0); //cancel
  obsticles[2][49] = new object(550,250,30,10,0,0,0,0,0,0,0); //cancel
  obsticles[2][50] = new object(520,670,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); //cancel
  
   // level 4
  obsticles[3][0] = new object(0,530,1200,175,0,0,0,0,0,0,0); // ground 1
  obsticles[3][1] = new object(1175,170,25,580,0,0,0,0,0,0,0); // wall right
  obsticles[3][2] = new object(0,170,25,580,0,0,0,0,0,0,0); // wall left
  obsticles[3][3] = new object(100,100,0,0,0,0,0,0,0,0,21); // Conclusion
  
  //// Menu
  //obsticles[5][0] = new object(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4);
  //obsticles[5][1] = new object(0, 530, 575, 175, 0, 0, 0, 0, 0, 0, 0);
}
