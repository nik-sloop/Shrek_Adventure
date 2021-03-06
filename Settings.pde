//variables to control the volum of the audio file
int volume = -20;
int volumeMute = -75;
int volumeGain;
int evolume = -20;
int evolumeMute = -75;
int evolumeGain;

//checks to see if the mute button is activated
boolean isMute = false;
boolean eisMute = false;

boolean settings = false;

boolean title = true;

void mousePressed(){
  if(mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50){
    settings = true;
  }
  if(mouseX >= 140 && mouseX <= 245 && mouseY >= 200 && mouseY <= 240 && settings){ //background Volume Up
    isMute();
    if(volume >= 10){
      volume = 10;
    }
      else{
    volume = volume + 5;
      }
      volumeGain = volume;
  }
  if(mouseX >= 260 && mouseX <= 355 && mouseY >= 200 && mouseY <= 250 && settings){ //background Volume Down
    isMute();
    if(volume <= -55){
    volume = -55;
    }
    else{
    volume = volume - 5;
    }
    volumeGain = volume;
}
if(mouseX >= 200 && mouseX <= 300 && mouseY >= 300 && mouseY <= 350 && settings){ //background mute
  volume = volumeMute;
  isMute = true;
  
}
if(mouseX >= 840 && mouseX <= 945 && mouseY >= 200 && mouseY <= 250 && settings){ //effect Volume Up
    eisMute(); 
    if(evolume >= 10){
      evolume = 10;
    }
      else{
    evolume = evolume + 5;
    shrek1.play();
    shrek1.rewind();
      }
      evolumeGain = evolume;
  }
  if(mouseX >= 960 && mouseX <= 1055 && mouseY >= 200 && mouseY <= 250 && settings){ //effect Volume Down
    eisMute();
    if(evolume <= -55){
    evolume = -55;
    }
    else{
    evolume = evolume - 5;
    shrek1.play();
    shrek1.rewind();
    }
    evolumeGain = evolume;
}
if(mouseX >= 900 && mouseX <= 1000 && mouseY >= 300 && mouseY <= 350 && settings){ //effect mute
  evolume = evolumeMute;
  eisMute = true;
  
}

if(settings && mouseX >= 400 && mouseX <= 550 && mouseY >= 500 && mouseY <= 575){ //Resume
  settings = false;
}

if(settings && mouseX >= 650 && mouseX <= 800 && mouseY >= 500 && mouseY <= 575){ //Quit 
  exit();
}

if(title && mouseX >= 80 && mouseX <= 460 && mouseY >= 435 && mouseY <= 525){
  title = false;
}

if(title && mouseX >= 560 && mouseX <= 1190 && mouseY >= 435 && mouseY <= 525){
  title = false;
  settings = true;
}
}

void soundSettings(){
  background(50);
  fill(0);
  stroke(1);
  line(0, height / 1.5, width, height / 1.5);
  line(600, 0, 600, 465);
  rect(200, 300, 100, 50); //background mute
  rect(900, 300, 100, 50); //effect mute
  fill(0, 250, 0);
  rect(140, 200, 110, 50); //background Volume Up
  rect(840, 200, 110, 50); //effect Volume Up
  rect(400, 500, 150, 75); //Resume
  fill(250, 0, 0);
  rect(260, 200, 110, 50); //background Volume Down
  rect(960, 200, 110, 50); //effect Volume Down
  rect(650, 500, 150, 75); //Quit
  fill(255);
  textSize(15);
  text("Mute", 230, 330);
  text("Mute", 930, 330);
  text("Volume Up", 155, 230);
  text("Volume Up", 855, 230);
  text("Volume Down", 265, 230);
  text("Volume Down", 965, 230);
  textSize(30);
  text("Background Music", 125, 150);
  text("Sound Effects", 850, 150);
  text("Resume", 415, 545);
  text("Quit", 690, 545);
}

//if the mute button is activated, pressing the volume button will
//restore the volume to the volume it was previously was at
void isMute(){
  if(isMute){
      isMute = false;
      volume = volumeGain;
    }
}

void eisMute(){
  if(eisMute){
    eisMute = false;
    evolume = evolumeGain;
  }
}
