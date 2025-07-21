void drawTetangga(float x, float y, color kulit, color rambut, color baju, color lengan, color celana, color sepatu) {
  noStroke();
  drawHairTetangga(x, y - 90, rambut);
  
  //kaki
  drawLeftLegsTetangga(x - 20, y + 250, kulit, sepatu); 
  drawRightLegsTetangga(x - 20, y + 250, kulit, sepatu); 
  
  //tangan
  drawLeftArm(x - 50, y + 20, lengan, kulit);
  drawRightArm(x - 50, y + 20, lengan, kulit);
  
  drawBaju(x, y + 170, baju); 
  drawNeck(x + 15, y + 10, kulit);
  drawHeadTetangga(x, y - 50, kulit);
  drawFace(x, y - 50);
  drawCelana(x, y + 170, celana); 
}

void drawCelana(float x, float y, color warna) {
  float topWidth = 80;
  float height = 190;

  float topLeftX = x - topWidth / 2;
  float topRightX = x + topWidth / 2;
  float bottomY = y + height;
  
  fill(warna);
  beginShape();
  vertex(topLeftX, y);
  bezierVertex(x - 10, y + 10, x + 10, y + 10, topRightX, y);
  vertex(topRightX - 5, bottomY);
  vertex(topRightX - 35, bottomY);
  vertex(topRightX - 35, y + 45);
  vertex(topRightX - 45, y + 45);
  vertex(topRightX - 45, bottomY);
  vertex(topRightX - 75, bottomY);
  endShape();
}

void drawBaju(float x, float y, color baju) {
  fill(baju);
  beginShape();
  vertex(x - 50, y - 150);
  vertex(x - 40, y - 40);
  vertex(x - 43, y - 2);
  bezierVertex(x - 10, y + 10, x + 10, y + 10, x + 43, y - 2);
  vertex(x + 40, y - 40);
  vertex(x + 50, y - 150);
  bezierVertex(x + 25, y - 170, x - 25, y - 170, x - 50, y - 150);
  endShape(CLOSE); 
}

void drawHairTetangga(float x, float y, color warna) {
  fill(warna); // warna rambut
  beginShape();
  
  // Mulai dari sisi kiri bawah rambut
  vertex(x - 40, y + 40);
  
  // Naik ke sisi kiri atas kepala
  bezierVertex(x - 50, y + 30, x - 45, y - 20, x - 30, y - 20);
  
  // Atas kepala dengan sedikit volume
  bezierVertex(x - 10, y - 25, x + 10, y - 25, x + 30, y - 20);
  
  // Sisi kanan atas kepala
  bezierVertex(x + 45, y - 20, x + 50, y + 30, x + 40, y + 40);
  
  // Sisi kanan bawah (potongan rambut pria cenderung lurus atau rapi)
  bezierVertex(x + 30, y + 40, x + 20, y + 40, x + 15, y + 40);
  
  // Bagian bawah rambut, lebih rapi dan pendek
  bezierVertex(x + 10, y + 40, x, y + 40, x - 10, y + 40);
  bezierVertex(x - 20, y + 40, x - 30, y + 40, x - 35, y + 40);
  
  // Tutup ke titik awal
  bezierVertex(x - 40, y + 40, x - 40, y + 40, x - 40, y + 40);
  
  endShape(CLOSE);
}

void drawHeadTetangga(float x, float y, color warna) {
  fill(warna);
  beginShape();
  
  // Pelipis kiri ke pipi kiri
  vertex(x - 40, y - 10);                        
  bezierVertex(x - 45, y + 10, x - 30, y + 32, x - 20, y + 42);  
  
  // Rahang kiri ke dagu
  bezierVertex(x - 12, y + 50, x - 5, y + 53, x, y + 53); 
  
  // Dagu ke rahang kanan
  bezierVertex(x + 5, y + 53, x + 12, y + 50, x + 20, y + 42); 
  
  // Pipi kanan ke pelipis kanan
  bezierVertex(x + 30, y + 32, x + 45, y + 10, x + 40, y - 10);
  
  // Atas kepala — diratakan
  bezierVertex(x + 40, y - 25, x + 30, y - 25, x + 10, y - 25);
  bezierVertex(x - 20, y - 25, x - 40, y - 25, x - 40, y - 10);
  
  endShape(CLOSE);
}

void drawLeftLegsTetangga(float x, float y, color kaki, color sepatu) {
  float legLength = 130;
  
  // Kaki kiri
  fill(kaki);
  beginShape();
  vertex(x + 10, y + legLength); 
  vertex(x + 15, y);        
  vertex(x - 15, y); 
  vertex(x - 10, y + legLength);
  bezierVertex(x - 50, y + legLength + 30, x + 20, y + legLength + 20, x + 10, y + legLength);
  endShape(CLOSE);
  
  //sepatu kiri
  fill(sepatu);
  beginShape();
  vertex(x - 10, y + legLength);
  bezierVertex(x - 80, y + legLength + 40, x , y + legLength + 30, x - 5, y + legLength + 30);
  bezierVertex(x + 20, y + legLength + 30, x + 10, y + legLength + 30, x + 10, y + legLength);
  bezierVertex(x + 5, y + legLength + 25, x - 15, y + legLength, x - 10, y + legLength);
  endShape(CLOSE);
}

void drawRightLegsTetangga(float x, float y, color kaki, color sepatu) {
  float legLength = 130;
  
  // Kaki kanan
  fill(kaki);
  beginShape();
  vertex(x + 30, y + legLength); 
  vertex(x + 25, y);        
  vertex(x  + 55, y); 
  vertex(x + 50, y + legLength);
  bezierVertex(x + 90, y + legLength +30, x + 20, y + legLength + 20, x + 30, y + legLength);
  endShape(CLOSE);
  
  // Sepatu kanan 
  fill(sepatu);
  beginShape();
  vertex(x + 50, y + legLength);
  bezierVertex(x + 120, y + legLength + 40, x + 40, y + legLength + 30, x + 45, y + legLength + 30);
  bezierVertex(x + 20, y + legLength + 30, x + 30, y + legLength + 30, x + 30, y + legLength);
  bezierVertex(x + 35, y + legLength + 25, x + 55, y + legLength, x + 50, y + legLength);
  endShape(CLOSE);

}
