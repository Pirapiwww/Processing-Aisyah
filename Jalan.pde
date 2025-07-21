color plastik1 = #00ff00;
color plastik2 = #ff0000;
color plastik3 = #0000ff;
color plastik4 = #ff00ff;

// ========================================================= AISYAH ==========================================================
// ------------------------------------------- kiri -----------------
void AisyahJalanKiri(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairAisyahKiri(x, y - 90, rambut);
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(-sudut2);
    drawRightArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x + 10, y + 270);     
    rotate(- sudut);
    drawLeftLegs(-15 , -15, kulit, sepatu); 
  popMatrix();
  
  pushMatrix();
    translate(x, y + 250);     
    rotate(sudut);
    drawLeftLegs(2 , 25, kulit, sepatu); 
  popMatrix();
  
  drawSkirtKiri(x, y + 160, rok); 
  drawBodyAisyahKiri(x, y + 170, baju); 
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(sudut2);
    drawRightArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKiri(x, y - 50, kulit);
  drawFaceAisyahKiri(x, y - 50);
}
// ------------------------------ kanan -----------------------
void AisyahJalanKanan(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairAisyahKanan(x, y - 90, rambut);
  
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(sudut2);
    drawLeftArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  
  pushMatrix();
    translate(x - 50, y + 250);     
    rotate(sudut);
    drawRightLegs(10 , 10, kulit, sepatu); 
  popMatrix();
  pushMatrix();
    translate(x - 40, y + 270);     
    rotate(- sudut);
    drawRightLegs(-5 , -5, kulit, sepatu); 
  popMatrix();
  
   
  drawSkirtKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 
    
  //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(-sudut2);
    drawLeftArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
    
  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKanan(x, y - 50, kulit);
  drawFaceAisyahKanan(x, y - 50);
}

// --------------------------------------------- PLASTIK KIRI -----------------------------------------------
void AisyahPlastikKiri(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairAisyahKiri(x, y - 90, rambut);
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(-sudut2);
    drawRightArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x + 10, y + 270);     
    rotate(- sudut);
    drawLeftLegs(-15 , -15, kulit, sepatu); 
  popMatrix();
  
  pushMatrix();
    translate(x, y + 250);     
    rotate(sudut);
    drawLeftLegs(2 , 25, kulit, sepatu); 
  popMatrix();
  
  drawSkirtKiri(x, y + 160, rok); 
  drawBodyAisyahKiri(x, y + 170, baju); 
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(sudut2);
    
    // ---------- plastik -----------
    pushMatrix();
      scale(0.5); 
    
      // Plastik 1
      pushMatrix();
        translate(-40, 305);
        rotate(radians(40));
        drawPlastik(0, 0, plastik1);
      popMatrix();
    
      // Plastik 2
      pushMatrix();
        translate(-50, 325);
        rotate(radians(20));
        drawPlastik(0, 0, plastik2);
      popMatrix();
      
      // Plastik 3
      pushMatrix();
        translate(-60, 355);
        rotate(- radians(10));
        drawPlastik(0, 0, plastik3);
      popMatrix();
      
      // Plastik 4
      pushMatrix();
        translate(-60, 370);
        rotate(- radians(30));
        drawPlastik(0, 0, plastik4);
      popMatrix();
      
    popMatrix();
    // -------------------------------
    
    drawRightArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKiri(x, y - 50, kulit);
  drawFaceAisyahKiri(x, y - 50);
}

void AisyahPlastikKiri1(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t){
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairAisyahKiri(x, y - 90, rambut);
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(-sudut2);
    drawRightArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x + 10, y + 270);     
    rotate(- sudut);
    drawLeftLegs(-15 , -15, kulit, sepatu); 
  popMatrix();
  
  pushMatrix();
    translate(x, y + 250);     
    rotate(sudut);
    drawLeftLegs(2 , 25, kulit, sepatu); 
  popMatrix();
  
  drawSkirtKiri(x, y + 160, rok); 
  drawBodyAisyahKiri(x, y + 170, baju); 
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(sudut2);
    
    // ---------- plastik -----------
    pushMatrix();
      scale(0.5); 
      // Plastik 1
      pushMatrix();
        translate(-40, 305);
        rotate(radians(40));
        drawPlastik(0, 0, plastik1);
      popMatrix();    
    popMatrix();
    // -------------------------------
    
    drawRightArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKiri(x, y - 50, kulit);
  drawFaceAisyahKiri(x, y - 50);
}

void AisyahPlastikKiri2(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairAisyahKiri(x, y - 90, rambut);
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(-sudut2);
    drawRightArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x + 10, y + 270);     
    rotate(- sudut);
    drawLeftLegs(-15 , -15, kulit, sepatu); 
  popMatrix();
  
  pushMatrix();
    translate(x, y + 250);     
    rotate(sudut);
    drawLeftLegs(2 , 25, kulit, sepatu); 
  popMatrix();
  
  drawSkirtKiri(x, y + 160, rok); 
  drawBodyAisyahKiri(x, y + 170, baju); 
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(sudut2);
    
    // ---------- plastik -----------
    pushMatrix();
      scale(0.5); 
      
      // Plastik 1
      pushMatrix();
        translate(-40, 305);
        rotate(radians(40));
        drawPlastik(0, 0, plastik1);
      popMatrix();
      
      // Plastik 2
      pushMatrix();
        translate(-50, 325);
        rotate(radians(20));
        drawPlastik(0, 0, plastik2);
      popMatrix();
    popMatrix();
    // -------------------------------
    
    drawRightArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKiri(x, y - 50, kulit);
  drawFaceAisyahKiri(x, y - 50);
}

void AisyahPlastikKiri3(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairAisyahKiri(x, y - 90, rambut);
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(-sudut2);
    drawRightArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x + 10, y + 270);     
    rotate(- sudut);
    drawLeftLegs(-15 , -15, kulit, sepatu); 
  popMatrix();
  
  pushMatrix();
    translate(x, y + 250);     
    rotate(sudut);
    drawLeftLegs(2 , 25, kulit, sepatu); 
  popMatrix();
  
  drawSkirtKiri(x, y + 160, rok); 
  drawBodyAisyahKiri(x, y + 170, baju); 
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(sudut2);
    
    // ---------- plastik -----------
    pushMatrix();
      scale(0.5); 
    
      // Plastik 1
      pushMatrix();
        translate(-40, 305);
        rotate(radians(40));
        drawPlastik(0, 0, plastik1);
      popMatrix();
    
      // Plastik 2
      pushMatrix();
        translate(-50, 325);
        rotate(radians(20));
        drawPlastik(0, 0, plastik2);
      popMatrix();
      
      // Plastik 3
      pushMatrix();
        translate(-60, 355);
        rotate(- radians(10));
        drawPlastik(0, 0, plastik3);
      popMatrix();
      
    popMatrix();
    // -------------------------------
    
    drawRightArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKiri(x, y - 50, kulit);
  drawFaceAisyahKiri(x, y - 50);
}

// ------------------------------------------------- PLASTIK KANAN -------------------------------------------------------------
void AisyahPlastikKanan(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairAisyahKanan(x, y - 90, rambut);
  
   //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(sudut2);
    drawLeftArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x - 50, y + 250);     
    rotate(sudut);
    drawRightLegs(10 , 10, kulit, sepatu); 
  popMatrix();
  
  //kaki
  pushMatrix();
    translate(x - 40, y + 270);     
    rotate(- sudut);
    drawRightLegs(-5 , -5, kulit, sepatu); 
  popMatrix();
  
   
  drawSkirtKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 

  // tangan
  pushMatrix();
    // Geser ke posisi mirror secara horizontal
    translate(x - 10, y + 40);
    scale(-1, 1); // Flip horizontal
    rotate(sudut2);
    
    // ---------- plastik (mirror) -----------
    pushMatrix();
      scale(0.5); 
  
      // Plastik 1
      pushMatrix();
        translate(-40, 305);
        rotate(radians(40));
        drawPlastik(0, 0, plastik1);
      popMatrix();
  
      // Plastik 2
      pushMatrix();
        translate(-50, 325);
        rotate(radians(20));
        drawPlastik(0, 0, plastik2);
      popMatrix();
  
      // Plastik 3
      pushMatrix();
        translate(-60, 355);
        rotate(-radians(10));
        drawPlastik(0, 0, plastik3);
      popMatrix();
  
      // Plastik 4
      pushMatrix();
        translate(-60, 370);
        rotate(-radians(30));
        drawPlastik(0, 0, plastik4);
      popMatrix();
    popMatrix();
    // ----------------------------------------
  
    drawRightArmAisyah(0, 0, lengan, kulit); // Tetap kanan karena mirror
  popMatrix();
  

  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKanan(x, y - 50, kulit);
  drawFaceAisyahKanan(x, y - 50);
}

void AisyahPlastikKanan1(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairAisyahKanan(x, y - 90, rambut);
  
   //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(sudut2);
    drawLeftArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x - 50, y + 250);     
    rotate(sudut);
    drawRightLegs(10 , 10, kulit, sepatu); 
  popMatrix();
  
  //kaki
  pushMatrix();
    translate(x - 40, y + 270);     
    rotate(- sudut);
    drawRightLegs(-5 , -5, kulit, sepatu); 
  popMatrix();
  
   
  drawSkirtKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 
  
  // tangan
  pushMatrix();
    // Geser ke posisi mirror secara horizontal
    translate(x - 10, y + 40);
    scale(-1, 1); // Flip horizontal
    rotate(sudut2);
    
    // ---------- plastik (mirror) -----------
    pushMatrix();
      scale(0.5); 
  
      // Plastik 1
      pushMatrix();
        translate(-40, 305);
        rotate(radians(40));
        drawPlastik(0, 0, plastik1);
      popMatrix();
    popMatrix();
  // ----------------------------------------
  
    drawRightArmAisyah(0, 0, lengan, kulit); // Tetap kanan karena mirror
  popMatrix();
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKanan(x, y - 50, kulit);
  drawFaceAisyahKanan(x, y - 50);
}

void AisyahPlastikKanan2(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairAisyahKanan(x, y - 90, rambut);
  
   //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(sudut2);
    drawLeftArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
 
  //Kaki
  pushMatrix();
    translate(x - 50, y + 250);     
    rotate(sudut);
    drawRightLegs(10 , 10, kulit, sepatu); 
  popMatrix();
  
  //kaki
  pushMatrix();
    translate(x - 40, y + 270);     
    rotate(- sudut);
    drawRightLegs(-5 , -5, kulit, sepatu); 
  popMatrix();
  
   
  drawSkirtKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 
  
  // tangan
  pushMatrix();
    // Geser ke posisi mirror secara horizontal
    translate(x - 10, y + 40);
    scale(-1, 1); // Flip horizontal
    rotate(sudut2);
    
    // ---------- plastik (mirror) -----------
    pushMatrix();
      scale(0.5); 
      // Plastik 1
      pushMatrix();
        translate(-40, 305);
        rotate(radians(40));
        drawPlastik(0, 0, plastik1);
      popMatrix();
  
      // Plastik 2
      pushMatrix();
        translate(-50, 325);
        rotate(radians(20));
        drawPlastik(0, 0, plastik2);
      popMatrix();
    popMatrix();
    // ----------------------------------------
  
    drawRightArmAisyah(0, 0, lengan, kulit); // Tetap kanan karena mirror
  popMatrix();

  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKanan(x, y - 50, kulit);
  drawFaceAisyahKanan(x, y - 50);
}

void AisyahPlastikKanan3(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairAisyahKanan(x, y - 90, rambut);
  
   //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(sudut2);
    drawLeftArmAisyah(0 , 0, lengan, kulit);
  popMatrix();
 
  //Kaki
  pushMatrix();
    translate(x - 50, y + 250);     
    rotate(sudut);
    drawRightLegs(10 , 10, kulit, sepatu); 
  popMatrix();
  
  //kaki
  pushMatrix();
    translate(x - 40, y + 270);     
    rotate(- sudut);
    drawRightLegs(-5 , -5, kulit, sepatu); 
  popMatrix();
  
   
  drawSkirtKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 
  
  // tangan
  pushMatrix();
    // Geser ke posisi mirror secara horizontal
    translate(x - 10, y + 40);
    scale(-1, 1); // Flip horizontal
    rotate(sudut2);
    
    // ---------- plastik (mirror) -----------
    pushMatrix();
      scale(0.5); 
      // Plastik 1
      pushMatrix();
        translate(-40, 305);
        rotate(radians(40));
        drawPlastik(0, 0, plastik1);
      popMatrix();
  
      // Plastik 2
      pushMatrix();
        translate(-50, 325);
        rotate(radians(20));
        drawPlastik(0, 0, plastik2);
      popMatrix();
  
      // Plastik 3
      pushMatrix();
        translate(-60, 355);
        rotate(-radians(10));
        drawPlastik(0, 0, plastik3);
      popMatrix();
    popMatrix();
    // ----------------------------------------
  
    drawRightArmAisyah(0, 0, lengan, kulit); // Tetap kanan karena mirror
  popMatrix();

  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKanan(x, y - 50, kulit);
  drawFaceAisyahKanan(x, y - 50);
}

// -------------------------------------------------------------------------------------------------------------------------------

// ------------------------------------------------------ IBU -----------------------------------------------------
void IbuJalanKiri(float x, float y, color kulit, color rambut, color lengan, color daster, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairIbuKiri(x, y - 90, rambut);
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(-sudut2);
    drawRightArmIbu(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x , y + 250);     
    rotate(- sudut);
    drawLeftLegs(0 , 20, kulit, sepatu); 
  popMatrix();
  
  pushMatrix();
    translate(x - 5, y + 270);     
    rotate(sudut);
    drawLeftLegs(0 , 5, kulit, sepatu); 
  popMatrix();
  
  drawDasterKiri(x, y + 170, daster); 
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(sudut2);
    drawRightArmIbu(0 , 0, lengan, kulit);
  popMatrix();
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadIbuKiri(x, y - 50, kulit);
  drawFaceIbuKiri(x, y - 50);
}
void IbuJalanKanan(float x, float y, color kulit, color rambut, color lengan, color daster, color sepatu, int t) {
  noStroke();
  float sudut = radians(15) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  drawHairIbuKanan(x, y - 90, rambut);

  //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(-sudut2);
    drawLeftArmIbu(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x - 40, y + 250);     
    rotate(- sudut);
    drawRightLegs(0 , 20, kulit, sepatu); 
  popMatrix();
  
  pushMatrix();
    translate(x - 50, y + 270);     
    rotate(sudut);
    drawRightLegs(10 , 5, kulit, sepatu); 
  popMatrix();
  
  drawDasterKanan(x, y + 170, daster); 
  
  //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(sudut2);
    drawLeftArmIbu(0 , 0, lengan, kulit);
  popMatrix();
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadIbuKanan(x, y - 50, kulit);
  drawFaceIbuKanan(x, y - 50);
}

//------------------------------------------------------- TETANGGA ----------------------------------------------------------------
void TetanggaJalanKanan(float x, float y, color kulit, color rambut, color baju, color lengan, color celana, color sepatu, int t) {
  noStroke();
  float sudut = radians(2) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(sudut2);
    drawLeftArmTetangga(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x - 43, y + 250);     
    rotate(- sudut);
    drawRightLegsTetangga(0, 0, kulit, sepatu); 
    drawCelanaKanan2(20, -100, celana);  
  popMatrix();
  
  pushMatrix();
    translate(x - 45, y + 270);     
    rotate(sudut);
    drawRightLegsTetangga(2, 0, kulit, sepatu); 
    drawCelanaKanan1(32, -110, celana); 
  popMatrix();
  
  //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(- sudut2);
    drawLeftArmTetangga(0 , 0, lengan, kulit);
  popMatrix();
  
  drawBajuKanan(x, y + 170, baju); 
  
  //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(- sudut2);
    drawLeftArmTetangga(0 , 0, lengan, kulit);
  popMatrix();
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadTetanggaKanan(x, y - 50, kulit);
  drawHairTetanggaKanan(x, y - 90, rambut);
  
  drawFaceTetanggaKanan(x, y - 50);
}

void TetanggaPlastikKanan2(float x, float y, color kulit, color rambut, color baju, color lengan, color celana, color sepatu, int t) {
  noStroke();
  float sudut = radians(2) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  //tangan
  pushMatrix();
    translate(x - 10, y + 40);     
    rotate(sudut2);
    drawLeftArmTetangga(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x - 43, y + 250);     
    rotate(- sudut);
    drawRightLegsTetangga(0, 0, kulit, sepatu); 
    drawCelanaKanan2(20, -100, celana);  
  popMatrix();
  
  pushMatrix();
    translate(x - 45, y + 270);     
    rotate(sudut);
    drawRightLegsTetangga(2, 0, kulit, sepatu); 
    drawCelanaKanan1(32, -110, celana); 
  popMatrix();
  
  drawBajuKanan(x, y + 170, baju); 
  
  // tangan
  pushMatrix();
    // Geser ke posisi mirror secara horizontal
    translate(x - 10, y + 40);
    rotate(- sudut2);
    
    // ---------- plastik (mirror) -----------
    pushMatrix();
      scale(0.5); 
      // Plastik 1
      pushMatrix();
        translate(-35, 305);
        rotate(radians(40));
        drawPlastik(0, 0, plastik1);
      popMatrix();
  
      // Plastik 2
      pushMatrix();
        translate(-45, 325);
        rotate(radians(20));
        drawPlastik(0, 0, plastik2);
      popMatrix();
    popMatrix();
    // ----------------------------------------
  
    drawLeftArmTetangga(0 , 0, lengan, kulit);
  popMatrix();

  drawNeck(x + 15, y + 10, kulit);
  drawHeadTetanggaKanan(x, y - 50, kulit);
  drawHairTetanggaKanan(x, y - 90, rambut);
  
  drawFaceTetanggaKanan(x, y - 50);
}

void TetanggaJalanKiri(float x, float y, color kulit, color rambut, color baju, color lengan, color celana, color sepatu, int t) {
  noStroke();
  float sudut = radians(2) * sin(TWO_PI * t / 30);
  float sudut2 = radians(35) * sin(TWO_PI * t / 30);
  
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(sudut2);
    drawRightArmTetangga(0 , 0, lengan, kulit);
  popMatrix();
  
  //Kaki
  pushMatrix();
    translate(x - 30, y + 250);     
    rotate(- sudut);
    drawLeftLegsTetangga(30, 0, kulit, sepatu); 
    drawCelanaKanan1(20, -100, celana);  
  popMatrix();
  
  pushMatrix();
    translate(x + 10, y + 270);     
    rotate(sudut);
    drawLeftLegsTetangga(-5, 0, kulit, sepatu); 
    drawCelanaKanan2(-30, -110, celana); 
  popMatrix();
  
  drawBajuKiri(x, y + 170, baju); 
    
  //tangan
  pushMatrix();
    translate(x + 10, y + 40);     
    rotate(- sudut2);
    drawRightArmTetangga(0 , 0, lengan, kulit);
  popMatrix();
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadTetanggaKiri(x, y - 50, kulit);
  drawHairTetanggaKiri(x, y - 90, rambut);
  drawFaceTetanggaKiri(x, y - 50);
  
}
