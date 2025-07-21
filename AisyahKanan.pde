void drawAisyahKanan(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu) {
  noStroke();
  drawHairAisyahKanan(x, y - 90, rambut);
  
  //Kaki
  drawRightLegs(x - 40, y + 250, kulit, sepatu); 
  drawRightLegs(x - 50, y + 270, kulit, sepatu); 
   
  drawSkirtKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 
    
  //tangan
  drawLeftArmAisyah(x -10 , y + 40, lengan, kulit);

  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKanan(x, y - 50, kulit);
  drawFaceAisyahKanan(x, y - 50);
}

// ------------------------------------------------------------ PLASTIK -----------------------------------------------------
void AisyahKananPlastik(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu) {
  noStroke();
  drawHairAisyahKanan(x, y - 90, rambut);
  
  //Kaki
  drawRightLegs(x - 40, y + 250, kulit, sepatu); 
  drawRightLegs(x - 50, y + 270, kulit, sepatu); 
   
  drawSkirtKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 
    
  // tangan
  pushMatrix();
    // Geser ke posisi mirror secara horizontal
    translate(x - 10, y + 40);
    scale(-1, 1); // Flip horizontal
    
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

void AisyahKananPlastik1(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu) {
  noStroke();
  drawHairAisyahKanan(x, y - 90, rambut);
  
  //Kaki
  drawRightLegs(x - 40, y + 250, kulit, sepatu); 
  drawRightLegs(x - 50, y + 270, kulit, sepatu); 
   
  drawSkirtKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 
    
  // tangan
  pushMatrix();
    // Geser ke posisi mirror secara horizontal
    translate(x - 10, y + 40);
    scale(-1, 1); // Flip horizontal
    
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

void AisyahKananPlastik2(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu) {
  noStroke();
  drawHairAisyahKanan(x, y - 90, rambut);
  
  //Kaki
  drawRightLegs(x - 40, y + 250, kulit, sepatu); 
  drawRightLegs(x - 50, y + 270, kulit, sepatu); 
   
  drawSkirtKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 
    
  // tangan
  pushMatrix();
    // Geser ke posisi mirror secara horizontal
    translate(x - 10, y + 40);
    scale(-1, 1); // Flip horizontal
    
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

void AisyahKananPlastik3(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu) {
  noStroke();
  drawHairAisyahKanan(x, y - 90, rambut);
  
  //Kaki
  drawRightLegs(x - 40, y + 250, kulit, sepatu); 
  drawRightLegs(x - 50, y + 270, kulit, sepatu); 
   
  drawSkirtKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 
    
  // tangan
  pushMatrix();
    // Geser ke posisi mirror secara horizontal
    translate(x - 10, y + 40);
    scale(-1, 1); // Flip horizontal
    
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



// ==========================================================================================================================
void drawHairAisyahKanan(float x, float y, color warna) {
fill(warna); // warna rambut
beginShape();

// Mulai dari kiri atas rambut
vertex(x - 45, y - 10); // x -50 → -45, y -20 → -10

// Gelombang kecil di atas kepala
bezierVertex(x - 15, y - 30, x - 5, y - 30, x , y - 25);           // x +5 kanan
bezierVertex(x, y - 30, x + 15, y - 30, x + 25, y - 20);           // x +10 → +15, +20 → +25
bezierVertex(x + 35, y - 15, x + 40, y - 10, x + 45, y + 10);      // semua x -5 dari sebelumnya

// Sisi kanan atas ke bawah
bezierVertex(x + 50, y + 20, x + 60, y + 50, x + 45, y + 70);
bezierVertex(x + 60, y + 90, x + 55, y + 130, x + 45, y + 150);
bezierVertex(x + 55, y + 170, x + 45, y + 190, x + 25, y + 200);
bezierVertex(x + 15, y + 210, x - 5, y + 220, x - 10, y + 222);

// Sisi kiri dari bawah ke atas
bezierVertex(x - 10, y + 222, x - 30, y + 210, x - 40, y + 200);
bezierVertex(x - 55, y + 190, x - 70, y + 170, x - 55, y + 150);
bezierVertex(x - 70, y + 130, x - 80, y + 110, x - 65, y + 90);
bezierVertex(x - 85, y + 70, x - 80, y + 40, x - 65, y + 30);
bezierVertex(x - 75, y + 15, x - 55, y, x - 45, y - 10); // kembali ke atas

endShape(CLOSE);

}

void drawBodyAisyahKanan(float x, float y, color baju) {
  fill(baju);
  beginShape();
  vertex(x - 35, y - 150);
  vertex(x - 20, y - 40);
  vertex(x - 28, y - 2);
  bezierVertex(x + 5, y + 10, x + 5, y + 10, x + 28, y - 2);
  vertex(x + 25, y - 40);
  vertex(x + 35, y - 150);
  bezierVertex(x + 10, y - 170, x - 10, y - 170, x - 35, y - 150);
  endShape(CLOSE);
}

void drawSkirtKanan(float x, float y, color warna) {
  float topWidth = 40;
  float bottomWidth = 80; // diperbesar dari 80 ke 100
  float height = 190;

  float topLeftX = x - topWidth / 2;
  float topRightX = x + topWidth / 2;
  float bottomLeftX = x - bottomWidth / 2;
  float bottomRightX = x + bottomWidth / 2;
  float bottomY = y + height;
  
  fill(warna);
  beginShape();
  vertex(topLeftX, y);
  bezierVertex(x - 10, y + 10, x + 10, y + 10, topRightX, y);
  vertex(bottomRightX, bottomY);
  bezierVertex(x + 10, bottomY + 10, x - 10, bottomY + 10, bottomLeftX, bottomY);
  endShape(CLOSE);
}

void drawHeadAisyahKanan(float x, float y, color warna) {
  fill(warna);
  beginShape();
  vertex(x - 15, y - 10);                        
  bezierVertex(x - 20, y + 10, x - 20, y + 30, x - 10, y + 40);  
  bezierVertex(x+10, y + 50, x+10, y + 50, x + 20, y + 45);            
  bezierVertex(x + 40, y - 40, x + 15, y - 40, x+20, y- 40);
  bezierVertex(x + 15, y - 30, x - 15, y - 30, x - 15, y - 10);
  endShape(CLOSE);
}

void drawFaceAisyahKanan(float x, float y){
  fill(0);
  noStroke();
  ellipse(x  , y -6, 7, 7); 
  ellipse(x + 25, y -6, 7, 7); 
  
  
  //alis kiri
  stroke(0);
  strokeWeight(1);
  noFill();
  bezier(x - 10, y - 14, x - 3, y - 20, x + 3, y - 20, x + 10, y - 14);

  //alis kanan
  stroke(0);
  strokeWeight(1);
  noFill();
  bezier(x + 15, y - 14, x + 22, y - 20, x + 28, y - 20, x + 30, y - 14);

  noFill();
  stroke(0);
  strokeWeight(1);

  //hidung
  beginShape();
  vertex(x + 14, y + 5);                          
  bezierVertex(x + 16, y + 8, x + 16, y + 12, x + 14, y + 15); 
  endShape();

  noFill();
  stroke(0);
  strokeWeight(1);
  
  //mulut
  beginShape();
  vertex(x , y + 25);               
  bezierVertex(x + 5, y + 30, x + 15, y + 30, x + 20, y + 25);         
  endShape();
}

void drawLeftArmAisyah(float x, float y, color lengan, color tangan) {
    //tangan kiri
  fill(tangan);
  beginShape();
  vertex(x + 11, y + 160);
  vertex(x - 1, y + 157);
  bezierVertex(x - 5, y + 170, x - 3, y + 170, x - 3, y + 175);
  bezierVertex(x + 7, y + 180, x + 11, y + 185, x + 11, y + 160);
  endShape(CLOSE);


  // lengan kiri
  fill(lengan);
  beginShape();
  vertex(x - 5, y);
  bezierVertex(x + 13, y - 20, x + 17, y - 15, x + 20, y);
  bezierVertex(x - 5, y + 70, x - 15, y + 100, x + 15, y + 160); // turun lebih jauh
  bezierVertex(x - 5, y + 167, x - 5, y + 160, x - 5, y + 160);
  bezierVertex(x - 25, y + 90, x - 35, y + 110, x - 5, y); // kembali ke atas
  endShape(CLOSE);
}
