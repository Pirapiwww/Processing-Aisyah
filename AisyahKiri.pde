void drawAisyahKiri(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu) {
  noStroke();
  drawHairAisyahKiri(x, y - 90, rambut);
  //kaki
  drawLeftLegs(x, y + 250, kulit, sepatu); 
  drawLeftLegs(x + 10, y + 270, kulit, sepatu); 
  
  drawSkirtKiri(x, y + 160, rok); 
  drawBodyAisyahKiri(x, y + 170, baju); 
    
  //tangan 
  drawRightArmAisyah(x + 10 , y +40, lengan, kulit);

  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKiri(x, y - 50, kulit);
  drawFaceAisyahKiri(x, y - 50);
}

void drawHairAisyahKiri(float x, float y, color warna) {
  fill(warna); // warna rambut
  beginShape();
  
  // Mulai dari kanan atas rambut (mirror dari kiri atas)
  vertex(x + 45, y - 10); // mirror dari x -45
  
  // Gelombang kecil di atas kepala (dibalik)
  bezierVertex(x + 15, y - 30, x + 5, y - 30, x, y - 25);
  bezierVertex(x, y - 30, x - 15, y - 30, x - 25, y - 20);
  bezierVertex(x - 35, y - 15, x - 40, y - 10, x - 45, y + 10);
  
  // Sisi kiri atas ke bawah (mirror dari sisi kanan)
  bezierVertex(x - 50, y + 20, x - 60, y + 50, x - 45, y + 70);
  bezierVertex(x - 60, y + 90, x - 55, y + 130, x - 45, y + 150);
  bezierVertex(x - 55, y + 170, x - 45, y + 190, x - 25, y + 200);
  bezierVertex(x - 15, y + 210, x + 5, y + 220, x + 10, y + 222);
  
  // Sisi kanan dari bawah ke atas (mirror dari sisi kiri)
  bezierVertex(x + 10, y + 222, x + 30, y + 210, x + 40, y + 200);
  bezierVertex(x + 55, y + 190, x + 70, y + 170, x + 55, y + 150);
  bezierVertex(x + 70, y + 130, x + 80, y + 110, x + 65, y + 90);
  bezierVertex(x + 85, y + 70, x + 80, y + 40, x + 65, y + 30);
  bezierVertex(x + 75, y + 15, x + 55, y, x + 45, y - 10); // kembali ke atas
  
  endShape(CLOSE);
}

void drawBodyAisyahKiri(float x, float y, color baju) {
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

void drawSkirtKiri(float x, float y, color warna) {
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

void drawHeadAisyahKiri(float x, float y, color warna) {
  fill(warna);
  beginShape();
  vertex(x + 15, y - 10);                        
  bezierVertex(x + 20, y + 10, x + 20, y + 30, x + 10, y + 40);  
  bezierVertex(x - 10, y + 50, x - 10, y + 50, x - 20, y + 45);            
  bezierVertex(x - 40, y - 40, x - 15, y - 40, x - 20, y - 40);
  bezierVertex(x - 15, y - 30, x + 15, y - 30, x + 15, y - 10);
  endShape(CLOSE);
}

void drawFaceAisyahKiri(float x, float y) {
  fill(0);
  noStroke();
  ellipse(x, y - 6, 7, 7); 
  ellipse(x - 25, y - 6, 7, 7); 
  
  // alis kanan (mirror dari kiri)
  stroke(0);
  strokeWeight(1);
  noFill();
  bezier(x + 10, y - 14, x + 3, y - 20, x - 3, y - 20, x - 10, y - 14);

  // alis kiri (mirror dari kanan)
  bezier(x - 15, y - 14, x - 22, y - 20, x - 28, y - 20, x - 30, y - 14);

  // hidung
  beginShape();
  vertex(x - 14, y + 5);                          
  bezierVertex(x - 16, y + 8, x - 16, y + 12, x - 14, y + 15); 
  endShape();

  // mulut
  beginShape();
  vertex(x, y + 25);               
  bezierVertex(x - 5, y + 30, x - 15, y + 30, x - 20, y + 25);         
  endShape();
}

void drawRightArmAisyah(float x, float y, color lengan, color tangan) {
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
