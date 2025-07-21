//------------------------------------------------- Duduk Kiri ------------------------------------------------------
void AisyahDudukKiri(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu){
  noStroke();
  drawHairAisyahKiri(x, y - 90, rambut);
  
  //kaki
  drawLeftLegs(x - 105, y + 180, kulit, sepatu); 
  drawLeftLegs(x - 95, y + 200, kulit, sepatu); 
  
  SkirtDudukKiri(x, y + 160, rok); 
  drawBodyAisyahKiri(x, y + 170, baju); 
  
  kursiKiri(x - 65,y + 235);
  //tangan 
  drawRightArmAisyah(x + 10 , y +40, lengan, kulit);

  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKiri(x, y - 50, kulit);
  drawFaceAisyahKiri(x, y - 50);
  
}

void SkirtDudukKiri(float x, float y, color warna) {
  float topWidth = 50;
  float bottomWidth = 60;
  float height = 60;

  float topLeftX = x - topWidth / 2;
  float topRightX = x + topWidth / 2;
  float bottomLeftX = x - bottomWidth / 2;
  float bottomRightX = x + bottomWidth / 2;
  float bottomY = y + height;

  fill(warna);
  beginShape();
  vertex(topLeftX, y);
  bezierVertex(x - 10, y + 10, x + 10, y + 10, topRightX, y); // pinggang atas
  bezierVertex(bottomRightX, bottomY - 10, bottomRightX - 5, bottomY , bottomRightX -10, bottomY); // lekukan bawah
  bezierVertex(x + 10, bottomY + 5, x - 10, bottomY + 5, bottomLeftX - 50, bottomY); // lekukan bawah
  
  bezierVertex(bottomLeftX - 50, bottomY + 40, bottomLeftX - 50, bottomY + 50, bottomLeftX - 50, bottomY + 80);

  // Ganti vertex(bottomLeftX - 50, bottomY + 80); dengan bezier halus
  bezierVertex(bottomLeftX - 70, bottomY + 90, bottomLeftX - 90, bottomY + 85, bottomLeftX - 90, bottomY + 80);

  // Ujung kiri rok ke atas
  bezierVertex(bottomLeftX - 100, bottomY + 40, bottomLeftX - 100, bottomY - 20, bottomLeftX - 90, bottomY - 40);

  // Tutup kembali ke pinggang kiri
  bezierVertex(bottomLeftX - 60, bottomY - 50, topLeftX - 10, y + 20, topLeftX, y);

  endShape();
}

// ----------------------------------------------- Duduk Kanan -------------------------------------------------------
void AisyahDudukKanan(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu){
  noStroke();
  drawHairAisyahKanan(x, y - 90, rambut);
  
  //Kaki
  drawRightLegs(x + 65, y + 180, kulit, sepatu); 
  drawRightLegs(x + 55, y + 200, kulit, sepatu); 
   
  SkirtDudukKanan(x, y + 160, rok); 
  drawBodyAisyahKanan(x, y + 170, baju); 
  
  kursiKanan(x - 45,y + 235);
  
  //tangan
  drawLeftArmAisyah(x -10 , y + 40, lengan, kulit);

  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKanan(x, y - 50, kulit);
  drawFaceAisyahKanan(x, y - 50);
}

void SkirtDudukKanan(float x, float y, color warna) {
  float topWidth = 50;
  float bottomWidth = 60;
  float height = 60;

  float topLeftX = x - topWidth / 2;
  float topRightX = x + topWidth / 2;
  float bottomLeftX = x - bottomWidth / 2;
  float bottomRightX = x + bottomWidth / 2;
  float bottomY = y + height;

  fill(warna);
  beginShape();
  vertex(topRightX, y);
  bezierVertex(x + 10, y + 10, x - 10, y + 10, topLeftX, y); // pinggang atas
  bezierVertex(bottomLeftX, bottomY - 10, bottomLeftX + 5, bottomY, bottomLeftX + 10, bottomY); // lekukan bawah
  bezierVertex(x - 10, bottomY + 5, x + 10, bottomY + 5, bottomRightX + 50, bottomY); // lekukan bawah

  bezierVertex(bottomRightX + 50, bottomY + 40, bottomRightX + 50, bottomY + 50, bottomRightX + 50, bottomY + 80);

  // Ganti vertex dengan bezier halus
  bezierVertex(bottomRightX + 70, bottomY + 90, bottomRightX + 90, bottomY + 85, bottomRightX + 90, bottomY + 80);

  // Ujung kanan rok ke atas
  bezierVertex(bottomRightX + 100, bottomY + 40, bottomRightX + 100, bottomY - 20, bottomRightX + 90, bottomY - 40);

  // Tutup kembali ke pinggang kanan
  bezierVertex(bottomRightX + 60, bottomY - 50, topRightX + 10, y + 20, topRightX, y);

  endShape();
}

//------------------------------------------ Duduk Depan -----------------------------------------------------------
void AisyahDudukDepan(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu){
  noStroke();
  float turun = 30;
  drawHair(x, y - 90 + turun, rambut);
  
  //kaki
  drawLeftLegs(x - 20, y + 250, kulit, sepatu); 
  drawRightLegs(x - 20, y + 250, kulit, sepatu); 
  
  drawBodyDuduk(x, y + 160 + turun, baju); 
  drawNeck(x + 15, y + 10 + turun, kulit);
  drawHead(x, y - 50 + turun, kulit);
  drawFace(x, y - 50 + turun);
  
  // tangan
  drawLeftArm(x - 50, y + 50 + turun, lengan, kulit);
  drawRightArm(x - 50, y + 50 + turun, lengan, kulit);

  SkirtDudukDepan(x, y + 200, rok);
}

void SkirtDudukDepan(float x, float y, color warna) {
  float topWidth = 80;
  float bottomWidth = 180; // lebih lebar karena rok melebar saat duduk
  float height = 150;      // lebih pendek karena duduk

  float topLeftX = x - topWidth / 2;
  float topRightX = x + topWidth / 2;
  float bottomLeftX = x - bottomWidth / 2;
  float bottomRightX = x + bottomWidth / 2;
  float bottomY = y + height;

  fill(warna);
  noStroke();
  beginShape();
  // bagian pinggang
  vertex(topLeftX, y);
  bezierVertex(x - 30, y + 10, x + 30, y + 10, topRightX, y);

  // sisi kanan melebar turun
  bezierVertex(bottomRightX - 10, y + height / 2, bottomRightX, bottomY - 10, bottomRightX, bottomY);

  // bagian bawah melengkung ke kiri
  bezierVertex(x + 40, bottomY + 20, x - 40, bottomY + 20, bottomLeftX, bottomY);

  // sisi kiri naik lagi ke atas
  bezierVertex(bottomLeftX, bottomY - 10, bottomLeftX + 10, y + height / 2, topLeftX, y);
  endShape(CLOSE);
}

void drawBodyDuduk(float x, float y, color baju) {
  fill(baju);
  noStroke();
  beginShape();

  // Bahu ke bawah
  vertex(x - 50, y - 100);           // kiri atas (bahu)
  vertex(x - 25, y - 20);            // kiri tengah
  vertex(x - 43, y + 10);            // kiri bawah (pinggul kiri)

  // lengkung bawah (pinggang bawah)
  bezierVertex(x - 10, y + 30, x + 10, y + 30, x + 43, y + 10); 

  vertex(x + 25, y - 20);            // kanan tengah
  vertex(x + 50, y - 100);           // kanan atas (bahu kanan)

  // lengkung atas (bahu)
  bezierVertex(x + 25, y - 120, x - 25, y - 120, x - 50, y - 100);

  endShape(CLOSE);
}
