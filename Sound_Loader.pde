// Loads all of the audio players
import ddf.minim.*;
AudioPlayer background; // Background music
AudioPlayer shrek1; // Shrek's catchphrase
AudioPlayer waffles; // Donkey's catchphrase
AudioPlayer shrekDeath; //Shrek's audio when he dies
AudioPlayer donkeyDeath; //Donkey's audio when he dies
Minim minim;

void soundLoader(){
  // Starts all of the music
  minim = new Minim(this);
  background = minim.loadFile("Sounds/background2.mp3");
  shrek1 = minim.loadFile("Sounds/shrek.mp3");
  waffles = minim.loadFile("Sounds/Waffles.mp3");
  shrekDeath = minim.loadFile("Sounds/shrekDeath.mp3");
  donkeyDeath = minim.loadFile("Sounds/donkeyDeath.mp3");
  background.loop();
}
