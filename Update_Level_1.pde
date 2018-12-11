void updateLevel1(){    //Button
  
  if(isTouching(characters[0],obsticles[2][11]) == 1 || isTouching(characters[1],obsticles[2][11]) == 1){    // waffle
      obsticles[2][11] = null; 
      number_of_waffles = number_of_waffles + 1;
  }
}
