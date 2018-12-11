/*
  This class calls all the other classes that are used
  to render the stage. 
*/
void render() {

//set background
  background(55);
  
  //drawBackgroundImages();
  if (dead != true) {              // while player has not run out of lives, run other methods
    drawObsticles();
    drawCharacters();
    drawLives(deathCounter);
    drawWaffles();
  } else if (dead == true) {       // if player has run out of lives, draw game over screen
    textSize(100);
    text("GAME OVER", 300, 400);
    fill(138, 7, 7);
    //delay(5000);
  
  }
  
  fill(255);
  rect(20, 20, 30, 30);
  
}


// Draws the appropriate character
void drawCharacters(){
  if(singlePlayer == 1){
    if(characters[character].getCharacter() == 0){
        characters[1].d();
    }
    if(characters[character].getCharacter() == 1){
        characters[0].d();
    }
    characters[character].d(); // draw shrek
  } else {
    characters[0].d();
    characters[1].d();
  }
}
void drawObsticles(){
  for(int i=0; i < obsticles[stage].length; i++){ //draw obsticles
    if(obsticles[stage][i] != null){
      obsticles[stage][i].d();
    }
  }
}
void drawBackgroundImages(){
  if (stage ==0){
    image(backgroundtree,0,0, 350,530);
    image(backgroundtree,300,0, 240,530);
    image(backgroundtree,720,0, 300,530);
    image(outhouse,40,440, 90, 90);
    image(swampwater,570, 440,270,270);
    
  }
  if(stage == 2){
    image(swampwater,580, 440,290,270);
    image(swampwater,200, 440,290,270);
    
  }
}
void drawLives(int x){
  int y = 10750;
  
  for (int xy = 0; xy < x; xy++) {
    scale(.05);
    image(shrekRight, 50, y);
    y += 1000;
    scale(20);
  }
}

void drawWaffles(){
  int y = 10750;
  String waffles_collection = Integer.toString(number_of_waffles); 
    scale(.05);
    image(collectwaffles, 1000, 10750);
    textSize(950);
    text("x", 1200, 12450);
    text(waffles_collection, 1200, 13550);
    scale(20);
}
