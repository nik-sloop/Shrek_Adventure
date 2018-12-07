
// Creates an array for the left and right controls
boolean[] shrekControl = { false, false};
boolean[] donkeyControl = { false, false};
boolean[] bothControls = {false, false};

// Is called when a key is pressed
void keyPressed(){ 
   if(ready && !dead){ 
    if(singlePlayer){
      // Moves character left
      if (key == 'a') {
        bothControls[0] = true;
      }
      // Moves character right
      if (key == 'd') { 
        bothControls[1] = true;
      }
      
      /*
          Checks to see which character is selected
          and then applies the correct jump height.
      */
      if (key == ' ' && vy == 0 ){ // Causes the charcter to jump
          if(character == 0){
            vy = -6; // Prevents the character from jumping in air
            characters[character].setVY(-6); // Jump height
          }
          if(character == 1){
            vy = -8; // Prevents the character from jumping in air
            characters[character].setVY(-8); // Jump height 
          }
        }    
      if(key == 'e' && vy == 0){ // Switches between characters.
        if(characters[character].getCharacter() == 0){
          characters[0].d();
          character = 1;
          waffles.play();
          waffles.rewind();
        } else {
          characters[1].d();
          character = 0;
          shrek1.play();
          shrek1.rewind();
        }
      }
      for(int i = 0; i < obsticles[stage].length; i++){
        if(key == 'f' && (isTouching(characters[0],obsticles[stage][i]) == 2 ||isTouching(characters[character],obsticles[stage][i]) == 3) && obsticles[stage][i].getBreakable()){
          obsticles[stage][i] = null;
        }
      }
    } else {
      if (key == 'a') {
        shrekControl[0] = true;
      }
      // Moves character right
      if (key == 'd') { 
        shrekControl[1] = true;
      }
      if (key == 'w' && shrekvy == 0 ){ // Causes the charcter to jump
            shrekvy = -6; // Prevents the character from jumping in air
            characters[0].setVY(-6); // Jump height
        }    
      for(int i = 0; i < obsticles[stage].length; i++){
        if(key == 'f' && (isTouching(characters[0],obsticles[stage][i]) == 2 ||isTouching(characters[0],obsticles[stage][i]) == 3) && obsticles[stage][i].getBreakable()){
          obsticles[stage][i] = null;
        }
      }
      if (keyCode == LEFT) {
        donkeyControl[0] = true;
      } 
      // Moves character right
      if (keyCode == RIGHT) { 
        donkeyControl[1] = true;
      } 
      if (keyCode == UP && donkeyvy == 0 ){ // Causes the charcter to jump
            donkeyvy = -8; // Prevents the character from jumping in air
            characters[1].setVY(-8); // Jump height
        }     
    }
   } else if(dead){
     if(key == ' '){
       reset = true;
     }
   }else if(!ready && !dead){
     if (keyCode == UP) {  // if key is up, check to see if map value is X and greater than 1
      if (map[playerX][playerY - 1] != 'X' && playerY > 1 && map[playerX][playerY - 1]-48 <= maxLevel) {
        playerY--;
      }
  } else if (keyCode == DOWN) {  // if key is down, check to see if map value is X and less than 18
      if ((map[playerX][playerY + 1] != 'X' && playerY < 18) && (map[playerX][playerY + 1]-48 <= maxLevel)) {
        playerY++;
      }
  } else if (keyCode == RIGHT) {  // if key is right, check to see if map value is X and less than 18
      if ((map[playerX + 1][playerY] != 'X' && playerX < 18) && (map[playerX+1][playerY]-48 <= maxLevel)) {
        playerX++;
      }
  } else if (keyCode == LEFT) {  // if key is left, check to see if map value is X and greater than 1
      if ((map[playerX - 1][playerY] != 'X' && playerX > 1) && (map[playerX-1][playerY]-48 <= maxLevel)) {
        playerX--;
      }
  } else if( keyCode == ENTER){
    if (map[playerX][playerY] == '1'){
      level = 1;
      ready = true;
      setup();
    } else if (map[playerX][playerY] == '2'){
      level = 2;
      ready = true;
      setup();
    }
    else if (map[playerX][playerY] == '3'){
      level = 3;
      ready = true;
      setup();
    }
  }
   }
}
  
// Is called when a key is released 
void keyReleased(){
  if(singlePlayer){
    if (key == 'a') { // Stops the character from moving
      bothControls[0] = false;
      vx = 0;
    }
    if (key == 'd') {  // Stops the character from moving
      bothControls[1] = false;
      vx = 0;
    }
    if(key == 'f'){
      key = '~';
    }
  } else {
    if (key == 'a') { // Stops the character from moving
      shrekControl[0] = false;
      shrekvx = 0;
    }
    if (key == 'd') {  // Stops the character from moving
      shrekControl[1] = false;
      shrekvx = 0;
    }
    if(key == 'f'){
      key = '~';
    }
    if (keyCode == LEFT) { // Stops the character from moving
      donkeyControl[0] = false;
      donkeyvx = 0;
    }
    if (keyCode == RIGHT) {  // Stops the character from moving
      donkeyControl[1] = false;
      donkeyvx = 0;
    }
  }
}
