void drawIbuKiri(float x, float y, color kulit, color rambut, color lengan, color daster, color sepatu) {
  drawHairIbuKiri(x, y - 90, rambut);
  //Kaki
  drawLeftLegs(x , y + 250, kulit, sepatu); 
  drawLeftLegs(x + 10, y + 270, kulit, sepatu); 
  
  drawDasterKiri(x, y + 170, daster); 
  //tangan
  drawRightArmIbu(x + 10 , y + 40, lengan, kulit);

  drawNeck(x + 15, y + 10, kulit);
  drawHeadIbuKiri(x, y - 50, kulit);
  drawFaceIbuKiri(x, y - 50);
}

void drawHeadIbuKiri(float x, float y, color warna) {
  fill(warna);
  beginShape();
  vertex(x + 15, y - 10);                        
  bezierVertex(x + 20, y + 10, x + 20, y + 30, x + 10, y + 40);  
  bezierVertex(x - 10, y + 50, x - 10, y + 50, x - 20, y + 45);            
  bezierVertex(x - 40, y - 40, x - 15, y - 40, x - 20, y - 40);
  bezierVertex(x - 15, y - 30, x + 15, y - 30, x + 15, y - 10);
  endShape(CLOSE);
}

void drawRightArmIbu(float x, float y, color lengan, color tangan) {
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

void drawFaceIbuKiri(float x, float y) {
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

void drawDasterKiri(float x, float y, color daster) {
  float topWidth = 40;
  float bottomWidth = 80;
  float height = 190;

  float topLeftX = x + topWidth / 2;
  float topRightX = x - topWidth / 2;
  float bottomLeftX = x + bottomWidth / 2;
  float bottomRightX = x - bottomWidth / 2;
  float bottomY = y + height;

  fill(daster);
  beginShape();
  vertex(x - 20, y);
  vertex(x - 20, y - 40);
  vertex(x - 30, y - 150);
  bezierVertex(x - 25, y - 170, x + 25, y - 170, x + 30, y - 150);
  vertex(x + 20, y - 40);
  vertex(x + 20, y);
  vertex(topLeftX, y);
  vertex(bottomLeftX, bottomY);
  bezierVertex(x - 10, bottomY + 10, x + 10, bottomY + 10, bottomRightX, bottomY);
  vertex(topRightX, y);
  endShape(CLOSE);
}

void drawHairIbuKiri(float x, float y, color warna) {
  fill(warna);
  beginShape();
  
  // sisi kanan bawah rambut
  vertex(x + 40, y + 80);
  
  // naik ke sisi kanan atas kepala
  bezierVertex(x + 50, y + 30, x + 45, y - 10, x + 25, y - 10);
  
  // atas kepala
  bezierVertex(x + 15, y - 15, x - 15, y - 15, x - 30, y - 5);
  
  // bagian bawah rambut
  bezierVertex(x - 40, y + 85, x - 30, y + 85, x - 15, y + 80);
  bezierVertex(x + 15, y + 85, x + 30, y + 85, x + 40, y + 80);
  
  // tutup ke titik awal
  bezierVertex(x + 35, y + 80, x + 40, y + 80, x + 40, y + 80);
  
  endShape(CLOSE);
}
