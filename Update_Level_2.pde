void updateLevel2(){    
  
  if(isTouching(characters[0],obsticles[0][13]) == 1 || isTouching(characters[1], obsticles[0][13]) == 1){
    if (pressed) {
      obsticles[0][2] = new object(630,355,80,10,0,0,0,1,300,400,0); // first jump
      pressed = false;
      }
    } else {
      obsticles[0][2] = null; // first jump
      pressed = true;
    }
  if(isTouching(characters[0],obsticles[1][20]) == 1 || isTouching(characters[1],obsticles[1][20]) == 1){
    if (pressed) {
      obsticles[1][19] = new object(25,210,logWidth,logHeight,0,0,0,0,0,0,3); //third log up
      pressed = false;
      }
    } else {
      obsticles[1][19] = null; // first jump
      pressed = true;
    }
    if(isTouching(characters[0],obsticles[2][12]) == 1 || isTouching(characters[1],obsticles[2][12]) == 1){    // waffle
      obsticles[2][12] = null; 
      number_of_waffles = number_of_waffles + 1;
  }
}
