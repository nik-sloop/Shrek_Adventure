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
  if(isTouching(characters[0],obsticles[1][30]) == 1 || isTouching(characters[1],obsticles[1][30]) == 1){
    //if (pressed) {
          obsticles[1][9] = new object(340,390,100,10,0,0,0,0,0,0,0); // second platform with button (not fixed)
          pressed = false;
    //}
      //} 
      //else {
      //    obsticles[1][9] = null; // second platform with button (not fixed)
      //    pressed = true;
      }
  if(isTouching(characters[0],obsticles[1][31]) == 1 || isTouching(characters[1],obsticles[1][31]) == 1){
    //if (pressed) {
          obsticles[1][39] = new object(310,450,30,10,0,0,0,0,0,0,0); // second platform with button (not fixed)
          pressed = false;
    //}
    //  } 
    //  else {
    //      obsticles[1][39] = null; // second platform with button (not fixed)
    //      pressed = true;
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
      if(isTouching(characters[0],obsticles[1][38]) == 1 || isTouching(characters[1],obsticles[1][38]) == 1){  //second waffle
        obsticles[1][38] = null; 
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
  //if(isTouching(characters[0],obsticles[2][39]) == 1 || isTouching(characters[1],obsticles[2][39]) == 1 || 
  //isTouching(characters[0],obsticles[2][40]) == 1 || isTouching(characters[1],obsticles[2][40]) == 1){
    
  if(isTouching(characters[0],obsticles[2][40]) == 1 || isTouching(characters[1],obsticles[2][40]) == 1){
    if (pressed) {
          obsticles[2][48] = new object(510,450,30,10,0,0,0,0,0,0,0); //cancel
          pressed = false;
    }
      } else {
          obsticles[2][48] = null; // cancel
          pressed = true;
      }
      if(isTouching(characters[0],obsticles[2][41]) == 1 || isTouching(characters[1],obsticles[2][41]) == 1){
        if (pressed) {
          //obsticles[2][51] = new object(740,230,50,10,0,0,0,1,80,230,0); //sixth platform (not moving)
          obsticles[2][52] = new object(740,170,50,10,0,0,0,0,0,0,0); // stairs
          obsticles[2][53] = new object(640,130,50,10,0,0,0,0,0,0,0); //stairs
          //obsticles[2][55] = new object(740,210,wafflesWidth,wafflesHeight,0,0,0,0,0,0,13); //waffle
          pressed = false;
        }
      } else {
          //obsticles[2][51] = null; // sixth platform (not moving)
          obsticles[2][52] = null;
          obsticles[2][53] = null;
          //obsticles[2][55] = null;
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
      if(isTouching(characters[0],obsticles[2][50]) == 1 || isTouching(characters[1],obsticles[2][50]) == 1){  // sixth waffle
        obsticles[2][50] = null; 
        number_of_waffles = number_of_waffles + 1;
      }
      if(isTouching(characters[0],obsticles[2][55]) == 1 || isTouching(characters[1],obsticles[2][55]) == 1){  // seventh waffle
        obsticles[2][55] = null; 
        number_of_waffles = number_of_waffles + 1;
      }
    
    
    
}
