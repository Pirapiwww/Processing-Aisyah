void drawTetanggaKiri(float x, float y, color kulit, color rambut, color baju, color lengan, color celana, color sepatu) {
  noStroke();
  
  //Kaki
  drawLeftLegsTetangga(x , y + 250, kulit, sepatu); 
  drawLeftLegsTetangga(x + 10, y + 270, kulit, sepatu); 
  
  drawCelanaKiri2(x, y + 170, celana);  
  
  drawCelanaKiri1(x, y + 170, celana); 
  
  drawBodyAisyahKiri(x, y + 170, baju); 
    
  //tangan
  drawRightArmTetangga(x + 10 , y + 40, lengan, kulit);

  drawNeck(x + 15, y + 10, kulit);
  drawHeadTetanggaKiri(x, y - 50, kulit);
  drawHairTetanggaKiri(x, y - 90, rambut);
  drawFaceTetanggaKiri(x, y - 50);
}

void TetanggaKiriPlastik2 (float x, float y, color kulit, color rambut, color baju, color lengan, color celana, color sepatu) {
  noStroke();
  
  //Kaki
  drawLeftLegsTetangga(x , y + 250, kulit, sepatu); 
  drawLeftLegsTetangga(x + 10, y + 270, kulit, sepatu); 
  
  drawCelanaKiri2(x, y + 170, celana);  
  
  drawCelanaKiri1(x, y + 170, celana); 
  
  drawBodyAisyahKiri(x, y + 170, baju); 
  // tangan
  pushMatrix();
    // Geser ke posisi mirror secara horizontal
    translate(x + 10, y + 40);
    
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
  
    drawRightArmTetangga(0 , 0, lengan, kulit);
  popMatrix();

  //tangan

  drawNeck(x + 15, y + 10, kulit);
  drawHeadTetanggaKiri(x, y - 50, kulit);
  drawHairTetanggaKiri(x, y - 90, rambut);
  drawFaceTetanggaKiri(x, y - 50);
  
}

void drawHairTetanggaKiri(float x, float y, color warna) {
  fill(warna); // warna rambut
  beginShape();
  
  // Mulai dari sisi kiri bawah rambut
  vertex(x - 28, y + 15); // x - 33 → x - 28
  
  // Naik ke sisi kiri atas kepala
  bezierVertex(x - 38, y + 15, x - 33, y - 20, x - 18, y - 20); // +5

  // Atas kepala dengan sedikit volume
  bezierVertex(x + 2, y - 25, x + 2, y - 25, x + 22, y - 20); // +5

  // Sisi kanan atas kepala
  bezierVertex(x + 37, y - 20, x + 42, y + 15, x + 32, y + 15); // +5

  // Sisi kanan bawah
  bezierVertex(x + 22, y + 15, x + 12, y + 15, x + 7, y + 15); // +5

  // Bagian bawah rambut
  bezierVertex(x + 2, y + 15, x - 8, y + 15, x - 18, y + 15); // +5
  bezierVertex(x - 28, y + 15, x - 38, y + 15, x - 23, y + 15); // +5

  // Tutup ke titik awal
  bezierVertex(x - 28, y + 15, x - 28, y + 15, x - 28, y + 15);

  endShape(CLOSE);
}

void drawHeadTetanggaKiri(float x, float y, color warna) {
  fill(warna);
  beginShape();
  vertex(x + 35, y - 10);                         // x -35 → x +35
  bezierVertex(x + 35, y + 10, x + 20, y + 30, x + 10, y + 40);  // x -20 → x +20, x -10 → x +10
  bezierVertex(x - 10, y + 50, x - 10, y + 50, x - 20, y + 45);  // x +10 → x -10, x +20 → x -20
  bezierVertex(x - 40, y - 40, x - 15, y - 40, x - 30, y - 30);  // x +40 → x -40, dll
  bezierVertex(x - 15, y - 40, x + 40, y - 40, x + 35, y - 10);  // x -40 → x +40, x -35 → x +35
  endShape(CLOSE);

}

void drawFaceTetanggaKiri(float x, float y) {
  fill(0);
  noStroke();
  ellipse(x + 10, y - 6, 7, 7); 
  ellipse(x - 15, y - 6, 7, 7); 
  
  // alis kanan (mirror dari kiri)
  stroke(0);
  strokeWeight(1);
  noFill();
  bezier(x + 20, y - 14, x + 13, y - 20, x + 7, y - 20, x , y - 14);

  // alis kiri (mirror dari kanan)
  bezier(x - 5, y - 14, x - 12, y - 20, x - 18, y - 20, x - 25, y - 14);

  // hidung
  beginShape();
  vertex(x - 4, y + 5);                           // x -14 → x -4
  bezierVertex(x - 6, y + 8, x - 6, y + 12, x - 4, y + 15); // x -16 → x -6
  endShape();
  
  // mulut
  beginShape();
  vertex(x + 5, y + 25);                          // x → x +5
  bezierVertex(x, y + 30, x - 10, y + 30, x - 15, y + 25); // x -5 → x, x -15 → x -10, x -20 → x -15
  endShape();


}

void drawRightArmTetangga(float x, float y, color lengan, color tangan) {
  // tangan kanan
  fill(tangan);
  beginShape();
  vertex(x - 11, y + 160);
  vertex(x + 1, y + 157);
  bezierVertex(x + 5, y + 170, x + 3, y + 170, x + 3, y + 175);
  bezierVertex(x - 7, y + 180, x - 11, y + 185, x - 11, y + 160);
  endShape(CLOSE);

  // lengan kanan
  fill(lengan);
  beginShape();
  vertex(x + 5, y);
  bezierVertex(x - 13, y - 20, x - 17, y - 15, x - 20, y);
  bezierVertex(x + 5, y + 70, x + 15, y + 100, x - 15, y + 160); 
  bezierVertex(x + 5, y + 167, x + 5, y + 160, x + 5, y + 160);
  bezierVertex(x + 25, y + 90, x + 35, y + 110, x + 5, y); 
  endShape(CLOSE);
}

void drawCelanaKiri1(float x, float y, color warna) {
  float topWidth = 80;
  float height = 190;

  float topLeftX = x - topWidth / 2;
  float topRightX = x + topWidth / 2;
  float bottomY = y + height;
  
  fill(warna);
  beginShape();
  vertex(topLeftX + 35, y);
  bezierVertex(x + 10, y + 10, x + 25, y + 10, topRightX -15, y);
  vertex(topRightX - 15, bottomY);
  vertex(topLeftX + 35, bottomY);
  endShape(CLOSE);
}

void drawCelanaKiri2(float x, float y, color warna) {
  float topWidth = 80;
  float height = 190;

  float topLeftX = x - topWidth / 2;
  float topRightX = x + topWidth / 2;
  float bottomY = y + height;
  
  fill(warna);
  beginShape();
  vertex(topLeftX + 20, y);
  bezierVertex(x + 10, y + 10, x + 25, y + 10, topRightX - 30, y);
  vertex(topRightX - 30, bottomY);
  vertex(topLeftX + 20, bottomY);
  endShape(CLOSE);
}

void drawBajuKiri(float x, float y, color baju) {
  fill(baju);
  beginShape();
  vertex(x - 30, y - 150);           
  vertex(x - 20, y - 40);           
  vertex(x - 23, y - 2);            
  bezierVertex(x + 10, y + 10, x - 10, y + 10, x + 23, y - 2); // x-10/+10/+43 → x+10/x-10/x+23
  vertex(x + 20, y - 40);           
  vertex(x + 30, y - 150);          
  bezierVertex(x + 5, y - 170, x - 5, y - 170, x - 30, y - 150); // x+25 → +5, x-25 → -5, x-50 → -30
  endShape(CLOSE);
} 
