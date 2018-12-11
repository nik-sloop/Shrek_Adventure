boolean pressed;

void updateLevel1(){    //Button
  if(isTouching(characters[0],obsticles[0][12]) == 1){
    if(pressed){
      obsticles[0][2] = new object(630,355,80,10,0,0,0,1,340,390,0); // first jump
      pressed = false;
      }
    } else {
      obsticles[0][2] = null; // first jump
      pressed = true;
    }
    
}
