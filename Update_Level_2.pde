void updateLevel2(){    //Button
  if(isTouching(characters[0],obsticles[2][0][30]) == 1 || isTouching(characters[1],obsticles[2][0][30]) == 1 || 
    isTouching(characters[0],obsticles[2][0][31]) == 1 || isTouching(characters[1],obsticles[2][0][31]) == 1 ){
          obsticles[2][0][9] = new object(340,380,100,10,0,0,0,1,530,380,0); // second platform with button (not fixed)
      } else {
          obsticles[2][0][9] = null; // second platform with button (not fixed)
      }
  if(isTouching(characters[0],obsticles[2][0][32]) == 1 || isTouching(characters[1],obsticles[2][0][32]) == 1){
          obsticles[2][0][6] = null; // third wall 
      } else {
          obsticles[2][0][6] = new object(1170,330,50,200,0,0,0,0,0,0,0); // third wall 
      }
    
}
