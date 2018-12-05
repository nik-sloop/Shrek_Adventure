/*
  This class calls all the other classes that are used
  to render the stage. 
*/
void render() {

//set background
  background(55);
  
  //drawBackgroundImages();
  drawObsticles();
  drawCharacters();
  fill(255);
  rect(20, 20, 30, 30);
  
}


// Draws the appropriate character
void drawCharacters(){
  if(singlePlayer){
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
