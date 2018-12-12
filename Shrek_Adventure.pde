int character = 0; // keeps track of which character is selected
int stage = 0; // keeps track of which level the player is on
int level = 1;
boolean singlePlayer = true;
boolean ready = false;
int startUp = 0;

void setup() {
  if(startUp == 0){
    soundLoader();
  }
  size(1200, 700); // set scree size
  image_Loader();  // load all of the needed images
  loadCharacters(); // create characters
  if(level == 1){
    loadLevel1();
  } else if (level == 2){
    loadLevel2();
  }else if (level == 3){
    exit();
  }
      // load all the obsticles for each level
  makeMapArray();
  
  //background(50);
  //drawBackgroundImages();
}
 
// Draws the map 
void draw() {
  //drawBackgroundImages();
  if(title == true){
    titleScreen();
  } else if(settings){
    soundSettings();
  }
  else if(!ready && settings == false && title == false){
    worldMap();
  }
  else if(ready){
    simulate();
    render(); 
  }
  
  background.setGain(volume);
  shrek1.setGain(evolume);
  waffles.setGain(evolume);
  shrekDeath.setGain(evolume);
  donkeyDeath.setGain(evolume);
  
} 
void titleScreen(){
  if(title){
    image(startscreen, 0, 0, width, height);
  }
}
