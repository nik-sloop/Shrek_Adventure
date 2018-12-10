void updateLevel1(){    //Button
  if(isTouching(characters[0],obsticles[1][0][12]) == 1){
      obsticles[1][0][3] = new object(630,355,80,10,0,0,0,0,0,0,0); // first jump
    } else {
      obsticles[1][0][3] = null; // first jump
    }
    
}
