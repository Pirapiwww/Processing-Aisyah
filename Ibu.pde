void drawIbu(float x, float y, color kulit, color rambut, color lengan, color daster, color sepatu) {
  drawHairIbu(x, y - 90, rambut);
  //Kaki
  drawLeftLegs(x - 20, y + 250, kulit, sepatu); 
  drawRightLegs(x - 20, y + 250, kulit, sepatu); 
  
  //tangan
  drawLeftArm(x - 50, y + 20, lengan, kulit);
  drawRightArm(x - 50, y + 20, lengan, kulit);
  
  drawDaster(x, y + 170, daster); 
  drawNeck(x + 15, y + 10, kulit);
  drawHead(x, y - 50, kulit);
  drawFace(x, y - 50);
}

void drawDaster(float x, float y, color daster) {
  float topWidth = 80;
  float bottomWidth = 120; // diperbesar dari 80 ke 100
  float height = 190;

  float topLeftX = x - topWidth / 2;
  float topRightX = x + topWidth / 2;
  float bottomLeftX = x - bottomWidth / 2;
  float bottomRightX = x + bottomWidth / 2;
  float bottomY = y + height;
  
  fill(daster);
  beginShape();
  vertex(x + 40, y);
  vertex(x + 40, y - 40);
  vertex(x + 50, y - 150);
  bezierVertex(x + 25, y - 170, x - 25, y - 170, x - 50, y - 150);
  vertex(x - 40, y - 40);
  vertex(x - 40, y);
  vertex(topLeftX, y);
  vertex(bottomLeftX, bottomY);
  bezierVertex(x + 10, bottomY + 10, x - 10, bottomY + 10, bottomRightX, bottomY);
  vertex(topRightX, y);
  
  endShape(CLOSE);
  
}

public void drawHairIbu(float x, float y, color warna) {
  fill(warna); // warna rambut
  beginShape();
  
  // Mulai dari sisi kiri bawah rambut (digeser lebih kiri)
  vertex(x - 50, y + 80);
  
  // Naik ke sisi kiri atas kepala
  bezierVertex(x - 60, y + 30, x - 55, y - 20, x - 35, y - 30);
  
  // Atas kepala tetap, bisa diberi sedikit volume tambahan jika mau
  bezierVertex(x - 15, y - 40, x + 15, y - 40, x + 35, y - 30);
  
  // Sisi kanan atas kepala (lebih melebar ke kanan)
  bezierVertex(x + 55, y - 20, x + 60, y + 30, x + 50, y + 80);
  
  // Sisi kanan bawah
  bezierVertex(x + 40, y + 85, x + 30, y + 85, x + 25, y + 80);
  
  // Bagian bawah rambut
  bezierVertex(x + 20, y + 85, x + 5, y + 85, x - 5, y + 80);
  bezierVertex(x - 15, y + 85, x - 30, y + 85, x - 40, y + 80);
  
  // Tutup ke titik awal
  bezierVertex(x - 45, y + 85, x - 50, y + 85, x - 50, y + 80);
  
  endShape(CLOSE);

}
