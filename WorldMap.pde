
int maxLevel = 2;
String mapString = "XXXXXX" +
                   "X1002X" +
                   "XX4X0X" +
                   "XX003X" +
                   "XXXXXX" +
                   "XXXXXX" ;

int N = int(sqrt(mapString.length()));
char[][] map = new char[N][N];
int playerX = 1;                    // tracks players x location, starting with their initial x
int playerY = 1;                    // tracks players y location, starting with their initial y
float animatedPlayerX = playerX;    // tracks players x location with motion
float animatedPlayerY = playerY;    // tracks player y location with motion

void worldMap(){
   // variables to track player location with motion
  animatedPlayerX = (animatedPlayerX * 9 + playerX) / 10;
  animatedPlayerY = (animatedPlayerY * 9 + playerY) / 10;
  
  // draw zoomed in map
  scale(width/6, height/5);
  //image(shrekRight,-animatedPlayerX*6, -animatedPlayerY*5);
  background(255);
  fill(255);
  strokeWeight(0);
  drawMap(); 
  background(255);
  background(worldMap);
  drawShrek();
  // draw minimap with rectangle tracking player progress through maze 
  
}
void drawShrek(){
  
  translate(animatedPlayerX, animatedPlayerY);
  //fill(189, 61, 58);
  //rect(.2,.3,.48,.4);
  scale(.1);
  image(shrekRight,4,3,3,3);
  image(donkeyRight,2,3,3,3);
  //fill(255);
  //rect(20, 20, 30, 30);
  
}

void makeMapArray() {  // maps values to two dimensional array
  int i = 0;
  
  for (int y = 0; y < N; y++)
    for (int x = 0; x < N; x++)
      map[x][y] = mapString.charAt(i++);
}

void drawMap() {  // draws map
  
  noFill();
  noStroke();
  
  for (int y = 0; y < N; y++)
    for (int x = 0; x < N; x++)
      if (map[x][y] == 'X')
        rect(x, y, 1, 1);
  
}

void drawMiniMap() {  // draws minimap
  
  //translate(animatedPlayerX, animatedPlayerY);
  scale(0.03, 0.03);
  fill(213, 174, 65);
  rect(0, 0, 5, 5);  // rectangle behind map
  //fill(63, 105, 170);
  fill(0, 0, 0);
  drawMap();          // draws minimap
  
}
