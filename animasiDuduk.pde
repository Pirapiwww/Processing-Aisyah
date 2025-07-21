void animasiAisyahDudukKiri(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int elapsed) {
  noStroke();
  if (elapsed < 5) {
    drawAisyahKiri(x - 105, y - 70, kulit, rambut, baju, lengan, rok, sepatu); // berdiri
    kursiKiri(x - 65, y + 235);
  } else if (elapsed < 10) {
    hampirDudukKiri1(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else if (elapsed < 15) {
    hampirDudukKiri2(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else if (elapsed < 20) {
    hampirDudukKiri3(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else {
    AisyahDudukKiri(x, y, kulit, rambut, baju, lengan, rok, sepatu); // posisi akhir duduk
  }
}

void animasiAisyahBerdiriKiri(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int elapsed) {
  noStroke();
  if (elapsed < 5) {
    hampirDudukKiri3(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else if (elapsed < 10) {
    hampirDudukKiri2(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else if (elapsed < 15) {
    hampirDudukKiri1(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else {
    drawAisyahKiri(x - 105, y - 70, kulit, rambut, baju, lengan, rok, sepatu);
    kursiKiri(x - 65, y + 235);
  }
}

void animasiAisyahDudukKanan(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int elapsed) {

  if (elapsed < 5) {
    drawAisyahKanan(x + 105, y - 70, kulit, rambut, baju, lengan, rok, sepatu);
    kursiKanan(x - 45, y + 235);
  } else if (elapsed < 10) {
    hampirDudukKanan1(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else if (elapsed < 15) {
    hampirDudukKanan2(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else if (elapsed < 20) {
    hampirDudukKanan3(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else {
    AisyahDudukKanan(x, y, kulit, rambut, baju, lengan, rok, sepatu); // tetap duduk
  }
}

void animasiAisyahBerdiriKanan(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int elapsed) {

  if (elapsed < 5) {
    hampirDudukKanan3(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else if (elapsed < 10) {
    hampirDudukKanan2(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else if (elapsed < 15) {
    hampirDudukKanan1(x, y, kulit, rambut, baju, lengan, rok, sepatu);
  } else {
    drawAisyahKanan(x + 105, y - 70, kulit, rambut, baju, lengan, rok, sepatu);
    kursiKanan(x - 45, y + 235);
  }
}


//--------------------------- SCENE DUDUK KIRI ------------------------------------------
void hampirDudukKiri1(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu){
  
  drawHairAisyahKiri(x - 50, y - 140, rambut);
  
  //kaki
  drawLeftLegs(x - 105, y + 180, kulit, sepatu); 
  drawLeftLegs(x - 95, y + 200, kulit, sepatu); 
  
  skirtHampirDudukKiri1(x, y + 160, rok); 
  drawBodyAisyahKiri(x - 50, y + 110, baju); 
  
  kursiKiri(x - 65,y + 235);
  //tangan 
  drawRightArmAisyah(x - 40, y - 10, lengan, kulit);

  drawNeck(x - 35 , y - 40, kulit);
  drawHeadAisyahKiri(x - 50, y - 100, kulit);
  drawFaceAisyahKiri(x - 50, y - 100);
  
}

void hampirDudukKiri2(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu){
  
  drawHairAisyahKiri(x - 30, y - 120, rambut);
  
  //kaki
  drawLeftLegs(x - 105, y + 180, kulit, sepatu); 
  drawLeftLegs(x - 95, y + 200, kulit, sepatu); 
  
  skirtHampirDudukKiri2(x, y + 160, rok); 
  drawBodyAisyahKiri(x - 30, y + 130, baju); 
  
  kursiKiri(x - 65,y + 235);
  //tangan 
  drawRightArmAisyah(x - 20, y + 10, lengan, kulit);

  drawNeck(x - 15 , y - 20, kulit);
  drawHeadAisyahKiri(x - 30, y - 80, kulit);
  drawFaceAisyahKiri(x - 30, y - 80);
  
}

void hampirDudukKiri3(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu){
  
  drawHairAisyahKiri(x - 10, y - 100, rambut);
  
  //kaki
  drawLeftLegs(x - 105, y + 180, kulit, sepatu); 
  drawLeftLegs(x - 95, y + 200, kulit, sepatu); 
  
  skirtHampirDudukKiri3(x, y + 160, rok); 
  drawBodyAisyahKiri(x - 10, y + 150, baju); 
  
  kursiKiri(x - 65,y + 235);
  //tangan 
  drawRightArmAisyah(x, y +30, lengan, kulit);

  drawNeck(x + 5, y , kulit);
  drawHeadAisyahKiri(x - 10, y - 60, kulit);
  drawFaceAisyahKiri(x - 10, y - 60);
  
}    

// ROK
void skirtHampirDudukKiri1(float x, float y, color warna){
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
  
  //  Bagian pinggang dipindah kiri dan naik 10px
  vertex(topLeftX - 50, y - 70);
  bezierVertex(x - 60, y - 50, x-40, y - 50, topRightX - 50, y - 70); // pinggang atas
  
  //  Bagian bawah tidak diubah
  bezierVertex(bottomRightX - 40, bottomY - 85, bottomRightX - 45, bottomY - 85, bottomRightX -50, bottomY - 80); // lekukan bawah
  bezierVertex(x - 30, bottomY - 65, x - 50, bottomY - 65, bottomLeftX - 50, bottomY ); // lekukan bawah
  
  //tetap
  bezierVertex(bottomLeftX - 50, bottomY + 20, bottomLeftX - 50, bottomY + 30, bottomLeftX - 40, bottomY + 70); // Y tetap
  
  bezierVertex(bottomLeftX - 70, bottomY + 80, bottomLeftX - 90, bottomY + 75, bottomLeftX - 110, bottomY + 70);
  
  
  // Ujung kiri rok ke atas
  bezierVertex(bottomLeftX - 100, bottomY + 30, bottomLeftX - 100, bottomY - 30, bottomLeftX - 95, bottomY - 40);
  
  // Tutup kembali ke pinggang kiri (juga geser x-10, y-10)
  bezierVertex(bottomLeftX - 90, bottomY - 90, topLeftX - 60, y - 50, topLeftX - 50, y - 70);
  
  endShape(CLOSE);
}

void skirtHampirDudukKiri2(float x, float y, color warna){
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
  
  //  Bagian pinggang dipindah kiri dan naik 10px
  vertex(topLeftX - 30, y - 40);
  bezierVertex(x - 40, y - 30, x-20, y - 30, topRightX - 30, y - 40); // pinggang atas
  
  //  Bagian bawah tidak diubah
  bezierVertex(bottomRightX - 20, bottomY - 65, bottomRightX - 25, bottomY - 65, bottomRightX -30, bottomY - 60); // lekukan bawah
  bezierVertex(x - 10, bottomY - 45, x - 30, bottomY - 45, bottomLeftX - 50, bottomY ); // lekukan bawah
  
  //tetap
  bezierVertex(bottomLeftX - 50, bottomY + 30, bottomLeftX - 50, bottomY + 40, bottomLeftX - 50, bottomY + 80); // Y tetap
  
  bezierVertex(bottomLeftX - 70, bottomY + 90, bottomLeftX - 90, bottomY + 85, bottomLeftX - 90, bottomY + 80);
  
  
  // Ujung kiri rok ke atas
  bezierVertex(bottomLeftX - 100, bottomY + 30, bottomLeftX - 100, bottomY - 30, bottomLeftX - 90, bottomY - 40);
  
  // Tutup kembali ke pinggang kiri (juga geser x-10, y-10)
  bezierVertex(bottomLeftX - 70, bottomY - 70, topLeftX - 40, y - 30, topLeftX - 30, y - 40);
  
  endShape(CLOSE);
}

void skirtHampirDudukKiri3(float x, float y, color warna){
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
  
  //  Bagian pinggang dipindah kiri dan naik 10px
  vertex(topLeftX - 10, y - 20);
  bezierVertex(x - 20, y - 10, x, y - 10, topRightX - 10, y - 20); // pinggang atas
  
  //  Bagian bawah tidak diubah
  bezierVertex(bottomRightX, bottomY - 45, bottomRightX - 5, bottomY - 45, bottomRightX -10, bottomY - 40); // lekukan bawah
  bezierVertex(x + 10, bottomY - 30, x - 10, bottomY - 30, bottomLeftX - 50, bottomY ); // lekukan bawah
  
  bezierVertex(bottomLeftX - 50, bottomY + 30, bottomLeftX - 50, bottomY + 40, bottomLeftX - 50, bottomY + 80); // Y tetap
  
  bezierVertex(bottomLeftX - 70, bottomY + 90, bottomLeftX - 90, bottomY + 85, bottomLeftX - 90, bottomY + 80);
  
  // Ujung kiri rok ke atas
  bezierVertex(bottomLeftX - 100, bottomY + 30, bottomLeftX - 100, bottomY - 30, bottomLeftX - 90, bottomY - 40);
  
  // Tutup kembali ke pinggang kiri (juga geser x-10, y-10)
  bezierVertex(bottomLeftX - 60, bottomY - 60, topLeftX - 20, y - 10, topLeftX - 10, y - 20);
  
  endShape(CLOSE);
}

//--------------------------- SCENE DUDUK KANAN ------------------------------------------
void hampirDudukKanan1(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu){

  drawHairAisyahKanan(x + 50, y - 160, rambut);
  
  //Kaki
  drawRightLegs(x + 65, y + 180, kulit, sepatu); 
  drawRightLegs(x + 55, y + 200, kulit, sepatu); 
   
  skirtHampirDudukKanan1(x, y + 160, rok); 
  drawBodyAisyahKanan(x + 50, y + 100, baju); 
  
  kursiKanan(x - 45,y + 235);
  
  //tangan
  drawLeftArmAisyah(x + 40 , y - 30, lengan, kulit);

  drawNeck(x + 65, y - 60, kulit);
  drawHeadAisyahKanan(x + 50, y - 120, kulit);
  drawFaceAisyahKanan(x + 50, y - 120);
}

void hampirDudukKanan2(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu){

  drawHairAisyahKanan(x + 30, y - 130, rambut);
  
  //Kaki
  drawRightLegs(x + 65, y + 180, kulit, sepatu); 
  drawRightLegs(x + 55, y + 200, kulit, sepatu); 
   
  skirtHampirDudukKanan2(x, y + 160, rok); 
  drawBodyAisyahKanan(x + 30, y + 130, baju); 
  
  //tetap
  kursiKanan(x - 45,y + 235);
  
  //tangan
  drawLeftArmAisyah(x + 20 , y , lengan, kulit);

  drawNeck(x + 45, y - 30, kulit);
  drawHeadAisyahKanan(x + 30, y - 90, kulit);
  drawFaceAisyahKanan(x + 30, y - 90);
}

void hampirDudukKanan3(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu){

  drawHairAisyahKanan(x + 10, y - 110, rambut);
  
  //Kaki
  drawRightLegs(x + 65, y + 180, kulit, sepatu); 
  drawRightLegs(x + 55, y + 200, kulit, sepatu); 
   
  skirtHampirDudukKanan3(x, y + 160, rok); 
  drawBodyAisyahKanan(x + 10, y + 150, baju); 
  
  kursiKanan(x - 45,y + 235);
  
  //tangan
  drawLeftArmAisyah(x , y + 20, lengan, kulit);

  drawNeck(x + 25, y - 10, kulit);
  drawHeadAisyahKanan(x + 10, y - 70, kulit);
  drawFaceAisyahKanan(x + 10, y - 70);
}

//ROK
void skirtHampirDudukKanan1(float x, float y, color warna){
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

  vertex(topRightX + 50, y - 70);
  bezierVertex(x + 60, y - 50, x + 40, y - 50, topLeftX + 50, y - 70); // pinggang atas

  bezierVertex(bottomLeftX + 40, bottomY - 85, bottomLeftX + 45, bottomY - 85, bottomLeftX + 50, bottomY - 80); // lekukan bawah
  bezierVertex(x + 30, bottomY - 65, x + 50, bottomY - 65, bottomRightX + 50, bottomY); // lekukan bawah

  bezierVertex(bottomRightX + 50, bottomY + 20, bottomRightX + 50, bottomY + 30, bottomRightX + 40, bottomY + 70);

  bezierVertex(bottomRightX + 70, bottomY + 80, bottomRightX + 90, bottomY + 75, bottomRightX + 110, bottomY + 70);

  bezierVertex(bottomRightX + 100, bottomY + 30, bottomRightX + 100, bottomY - 30, bottomRightX + 95, bottomY - 40);

  bezierVertex(bottomRightX + 90, bottomY - 90, topRightX + 60, y - 50, topRightX + 50, y - 70);

  endShape(CLOSE);
}

void skirtHampirDudukKanan2(float x, float y, color warna){
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

  vertex(topRightX + 30, y - 40);
  bezierVertex(x + 40, y - 30, x + 20, y - 30, topLeftX + 30, y - 40); // pinggang atas

  bezierVertex(bottomLeftX + 20, bottomY - 65, bottomLeftX + 25, bottomY - 65, bottomLeftX + 30, bottomY - 60); // lekukan bawah
  bezierVertex(x + 10, bottomY - 45, x + 30, bottomY - 45, bottomRightX + 50, bottomY); // lekukan bawah

  bezierVertex(bottomRightX + 50, bottomY + 30, bottomRightX + 50, bottomY + 40, bottomRightX + 50, bottomY + 80);

  bezierVertex(bottomRightX + 70, bottomY + 90, bottomRightX + 90, bottomY + 85, bottomRightX + 90, bottomY + 80);

  bezierVertex(bottomRightX + 100, bottomY + 30, bottomRightX + 100, bottomY - 30, bottomRightX + 90, bottomY - 40);

  bezierVertex(bottomRightX + 70, bottomY - 70, topRightX + 40, y - 30, topRightX + 30, y - 40);

  endShape(CLOSE);
}

void skirtHampirDudukKanan3(float x, float y, color warna){
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

  vertex(topRightX + 10, y - 20);
  bezierVertex(x + 20, y - 10, x, y - 10, topLeftX + 10, y - 20); // pinggang atas

  bezierVertex(bottomLeftX, bottomY - 45, bottomLeftX + 5, bottomY - 45, bottomLeftX + 10, bottomY - 40); // lekukan bawah
  bezierVertex(x - 10, bottomY - 30, x + 10, bottomY - 30, bottomRightX + 50, bottomY); // lekukan bawah

  bezierVertex(bottomRightX + 50, bottomY + 30, bottomRightX + 50, bottomY + 40, bottomRightX + 50, bottomY + 80);

  bezierVertex(bottomRightX + 70, bottomY + 90, bottomRightX + 90, bottomY + 85, bottomRightX + 90, bottomY + 80);

  bezierVertex(bottomRightX + 100, bottomY + 30, bottomRightX + 100, bottomY - 30, bottomRightX + 90, bottomY - 40);

  bezierVertex(bottomRightX + 60, bottomY - 60, topRightX + 20, y - 10, topRightX + 10, y - 20);

  endShape(CLOSE);
}

//----------------------------------------------- SCENE DUDUK DEPAN ----------------------------------------------------------
