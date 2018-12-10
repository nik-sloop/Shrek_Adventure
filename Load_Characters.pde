void loadCharacters(){
  /*
     Creates an array with all the charcters and their details, 
     such as the starting location and what sprite to use
     for them.
  */
  if(singlePlayer){
    characters = new character[2];
    characters[0] = new character(100,400,20,50, vx,vy,0); 
    characters[1] = new character(100,440,25,30, vx,vy,1); 
  } else {
    print("test");
    characters = new character[2];
    characters[0] = new character(100,400,20,50, shrekvx,shrekvy,0); 
    characters[1] = new character(100,440,25,30, donkeyvx,donkeyvy,1);
  }
}
