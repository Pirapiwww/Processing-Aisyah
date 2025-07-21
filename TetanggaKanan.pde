void drawTetanggaKanan(float x, float y, color kulit, color rambut, color baju, color lengan, color celana, color sepatu) {
  noStroke();
  //Kaki
  drawRightLegsTetangga(x - 40, y + 250, kulit, sepatu); 
  drawRightLegsTetangga(x - 50, y + 270, kulit, sepatu); 
  
  drawCelanaKanan2(x - 20, y + 165, celana);  
  drawCelanaKanan1(x - 20, y + 165, celana); 
  drawBajuKanan(x, y + 170, baju); 
  
  //tangan
  drawLeftArmTetangga(x -10 , y + 40, lengan, kulit);

  drawNeck(x + 15, y + 10, kulit);
  drawHeadTetanggaKanan(x, y - 50, kulit);
  drawHairTetanggaKanan(x, y - 90, rambut);
  
  drawFaceTetanggaKanan(x, y - 50);
}

void drawHairTetanggaKanan(float x, float y, color warna) {
  fill(warna); // warna rambut
  beginShape();
    
    // Mulai dari sisi kiri bawah rambut
    vertex(x - 33, y + 15); // x - 30 → x - 33
    
    // Naik ke sisi kiri atas kepala
    bezierVertex(x - 43, y + 15, x - 38, y - 20, x - 23, y - 20);
  
    // Atas kepala dengan sedikit volume
    bezierVertex(x - 3, y - 25, x - 3, y - 25, x + 17, y - 20);
  
    // Sisi kanan atas kepala
    bezierVertex(x + 32, y - 20, x + 37, y + 15, x + 27, y + 15); // x + 30 → x + 27
  
    // Sisi kanan bawah
    bezierVertex(x + 17, y + 15, x + 7, y + 15, x + 2, y + 15); // x + 5 → x + 2
  
    // Bagian bawah rambut
    bezierVertex(x - 3, y + 15, x - 13, y + 15, x - 23, y + 15); // x - 10 → x - 13
    bezierVertex(x - 33, y + 15, x - 43, y + 15, x - 28, y + 15); // x - 25 → x - 28
  
    // Tutup ke titik awal
    bezierVertex(x - 33, y + 15, x - 33, y + 15, x - 33, y + 15);
    
  endShape(CLOSE);

}

void drawCelanaKanan1(float x, float y, color warna) {
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
void drawCelanaKanan2(float x, float y, color warna) {
  float topWidth = 80;
  float height = 190;

  float topLeftX = x - topWidth / 2;
  float topRightX = x + topWidth / 2;
  float bottomY = y + height;
  
  fill(warna);
  beginShape();
  vertex(topLeftX + 50, y);
  bezierVertex(x + 10, y + 10, x + 25, y + 10, topRightX, y);
  vertex(topRightX , bottomY);
  vertex(topLeftX + 50, bottomY);
  endShape(CLOSE);
}

void drawBajuKanan(float x, float y, color baju) {
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

void drawLeftArmTetangga(float x, float y, color lengan, color tangan) {
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

void drawHeadTetanggaKanan(float x, float y, color warna) {
  fill(warna);
  beginShape();
  vertex(x - 35, y - 10);                         // x -35 → x -40
  bezierVertex(x - 35, y + 10, x - 20, y + 30, x - 10, y + 40);  // x -40 → x -45
  bezierVertex(x + 10, y + 50, x + 10, y + 50, x + 20, y + 45);
  bezierVertex(x + 40, y - 40, x + 15, y - 40, x + 30, y - 30);
  bezierVertex(x + 15, y - 40, x - 40, y - 40, x - 35, y - 10);  // x -35 → x -40
  endShape(CLOSE);

}

void drawFaceTetanggaKanan(float x, float y){
  fill(0);
  noStroke();
  ellipse(x - 5, y - 6, 7, 7); 
  ellipse(x + 20, y - 6, 7, 7); 
  
  // alis kiri
  stroke(0);
  strokeWeight(1);
  noFill();
  bezier(x - 15, y - 14, x - 8, y - 20, x - 2, y - 20, x + 5, y - 14);

  // alis kanan
  stroke(0);
  strokeWeight(1);
  noFill();
  bezier(x + 10, y - 14, x + 17, y - 20, x + 23, y - 20, x + 25, y - 14);

  noFill();
  stroke(0);
  strokeWeight(1);

  // hidung
  beginShape();
  vertex(x + 9, y + 5);                          // x + 14 → x + 9
  bezierVertex(x + 11, y + 8, x + 11, y + 12, x + 9, y + 15);  // x + 16 → x + 11, x + 14 → x + 9
  endShape();
  
  noFill();
  stroke(0);
  strokeWeight(1);
  
  // mulut
  beginShape();
  vertex(x - 5, y + 25);                         // x → x - 5
  bezierVertex(x, y + 30, x + 10, y + 30, x + 15, y + 25); // x + 5 → x, x + 15 → x + 10, x + 20 → x + 15
  endShape();
}
