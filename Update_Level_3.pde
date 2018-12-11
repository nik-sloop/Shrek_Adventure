void updateLevel3(){    
///////obstical parameters: (xPosition, Yposition, Width, Height, xMovement, xUpperLimit, xLowerLimit, yMovement, yUpperLimit, yLowerLimit, obstical type)////////
  //Stage 1
  if(isTouching(characters[0],obsticles[0][20]) == 1 || isTouching(characters[1],obsticles[0][20]) == 1){  //first waffle
          obsticles[0][20] = null; 
          number_of_waffles = number_of_waffles + 1;
      } 
    if(isTouching(characters[0],obsticles[0][21]) == 1 || isTouching(characters[1],obsticles[0][21]) == 1){ // second waffle 
        obsticles[0][21] = null; 
        number_of_waffles = number_of_waffles + 1;
    } 
    
    //Stage 2
  if(isTouching(characters[0],obsticles[1][30]) == 1 || isTouching(characters[1],obsticles[1][30]) == 1 || 
  isTouching(characters[0],obsticles[1][31]) == 1 || isTouching(characters[1],obsticles[1][31]) == 1){
    if (pressed) {
          obsticles[1][9] = new object(340,380,100,10,0,0,0,1,380,530,0); // second platform with button (not fixed)
          pressed = false;
    }
      } else {
          obsticles[1][9] = null; // second platform with button (not fixed)
          pressed = true;
      }
      if(isTouching(characters[0],obsticles[1][32]) == 1 || isTouching(characters[1],obsticles[1][32]) == 1){
          obsticles[1][6] = null; // third wall 
      } else {
          obsticles[1][6] = new object(1170,330,50,200,0,0,0,0,0,0,0); // third wall 
      }
      if(isTouching(characters[0],obsticles[1][33]) == 1 || isTouching(characters[1],obsticles[1][33]) == 1){  //first waffle
          obsticles[1][33] = null; 
          number_of_waffles = number_of_waffles + 1;
      }
      if(isTouching(characters[0],obsticles[1][34]) == 1 || isTouching(characters[1],obsticles[1][34]) == 1){  //second waffle
        obsticles[1][34] = null; 
        number_of_waffles = number_of_waffles + 1;
      }   
      if(isTouching(characters[0],obsticles[1][35]) == 1 || isTouching(characters[1],obsticles[1][35]) == 1){  //third waffle
        obsticles[1][35] = null; 
        number_of_waffles = number_of_waffles + 1;
      }
      if(isTouching(characters[0],obsticles[1][36]) == 1 || isTouching(characters[1],obsticles[1][36]) == 1){  //fourth waffle
        obsticles[1][36] = null; 
        number_of_waffles = number_of_waffles + 1;
      }
  
  //Stage 3
      if(isTouching(characters[0],obsticles[2][39]) == 1 || isTouching(characters[1],obsticles[2][39]) == 1 || 
  isTouching(characters[0],obsticles[2][40]) == 1 || isTouching(characters[1],obsticles[2][40]) == 1){
    if (pressed) {
          obsticles[2][26] = new object(520,530,80,10,0,0,0,1,380,550,0); // second platform with button (not fixed)
          pressed = false;
    }
      } else {
          obsticles[2][26] = null; // second platform with button (not fixed)
          pressed = true;
      }
      if(isTouching(characters[0],obsticles[2][41]) == 1 || isTouching(characters[1],obsticles[2][41]) == 1){
        if (pressed) {
          obsticles[2][30] = new object(740,230,50,10,0,0,0,1,80,230,0); //sixth platform (not moving)
          pressed = false;
        }
      } else {
          obsticles[2][30] = null; // sixth platform (not moving)
          pressed = true;
      }
      if(isTouching(characters[0],obsticles[2][42]) == 1 || isTouching(characters[1],obsticles[2][42]) == 1){  // first waffle
        obsticles[2][42] = null; 
        number_of_waffles = number_of_waffles + 1;
      }
      if(isTouching(characters[0],obsticles[2][43]) == 1 || isTouching(characters[1],obsticles[2][43]) == 1){  // second waffle
        obsticles[2][43] = null; 
        number_of_waffles = number_of_waffles + 1;
      }
      if(isTouching(characters[0],obsticles[2][44]) == 1 || isTouching(characters[1],obsticles[2][44]) == 1){  // third  waffle
        obsticles[2][44] = null; 
        number_of_waffles = number_of_waffles + 1;
      }
      if(isTouching(characters[0],obsticles[2][45]) == 1 || isTouching(characters[1],obsticles[2][45]) == 1){  // fourth waffle
        obsticles[2][45] = null; 
        number_of_waffles = number_of_waffles + 1;
      }
      if(isTouching(characters[0],obsticles[2][46]) == 1 || isTouching(characters[1],obsticles[2][46]) == 1){  // fifth waffle
        obsticles[2][46] = null; 
        number_of_waffles = number_of_waffles + 1;
      }
      if(isTouching(characters[0],obsticles[2][50]) == 1 || isTouching(characters[1],obsticles[2][50]) == 1){  // fifth waffle
        obsticles[2][50] = null; 
        number_of_waffles = number_of_waffles + 1;
      }
    
    
}
