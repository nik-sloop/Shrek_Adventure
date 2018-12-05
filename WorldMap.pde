
int maxLevel = 0;
String mapString = "XXXXX" +
                   "X1XXX" +
                   "X2 3X" +
                   "XXX4X" +
                   "XXXXX";

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
  scale(width, height);
  translate(-animatedPlayerX, -animatedPlayerY);
  background(255);
  fill(0);
  strokeWeight(0.2);
  drawMap();
  
  // draw minimap with rectangle tracking player progress through maze
  pushMatrix();
  drawMiniMap();
  drawRect();
  
  // draws timer
  pushMatrix();
  translate(-animatedPlayerX + 85, -animatedPlayerY + 6);
  scale(8);
  popMatrix();
  popMatrix();
  
}
void drawRect() {  // draws rectangle in minimap which tracks players progress through the maze
  
  translate(animatedPlayerX, animatedPlayerY);
  fill(189, 61, 58);
  rect(0, 0, 1, 1);
  
}

void makeMapArray() {  // maps values to two dimensional array
  int i = 0;
  
  for (int y = 0; y < N; y++)
    for (int x = 0; x < N; x++)
      map[x][y] = mapString.charAt(i++);
}

void drawMap() {  // draws map
  
  for (int y = 0; y < N; y++)
    for (int x = 0; x < N; x++)
      if (map[x][y] == 'X')
        rect(x, y, 1, 1);
  
}

void drawMiniMap() {  // draws minimap
  
  translate(animatedPlayerX, animatedPlayerY);
  scale(0.03, 0.03);
  fill(213, 174, 65);
  rect(0, 0, 5, 5);  // rectangle behind map
  //fill(63, 105, 170);
  fill(0, 0, 0);
  drawMap();          // draws minimap
  
}
