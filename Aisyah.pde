// --------------------- KARAKTER ------------------------------
//warna kulit dan rambut
color kulit = #ffdfc4;
color rambut = #141414;

//warna pakaian Aisyah
color bajuAisyah = #e656e8;
color lenganAisyah = #f4b3f5;
color sepatuAisyah = #76caf5;
color rokAisyah = #993fe8;

//set variabel t untuk jalan
int t = 0;

void drawAisyah(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu) {
  noStroke();
  drawHair(x, y - 90, rambut);
  //kaki
  drawLeftLegs(x - 20, y + 250, kulit, sepatu); 
  drawRightLegs(x - 20, y + 250, kulit, sepatu); 
  
  drawBody(x, y + 170, baju); 
  drawNeck(x + 15, y + 10, kulit);
  drawHead(x, y - 50, kulit);
  drawFace(x, y - 50);
  
  //tangan
  drawLeftArm(x - 50, y + 20, lengan, kulit);
  drawRightArm(x - 50, y + 20, lengan, kulit);
  drawSkirt(x, y + 170, rok); 
}

void drawSkirt(float x, float y, color warna) {
  float topWidth = 80;
  float bottomWidth = 120; // diperbesar dari 80 ke 100
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

void drawLeftLegs(float x, float y, color kaki, color sepatu) {
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
  bezierVertex(x - 90, y + legLength + 55, x , y + legLength + 30, x - 5, y + legLength+30);
  bezierVertex(x + 20, y + legLength + 20, x + 20, y + legLength + 20, x + 10, y+ legLength);
  bezierVertex(x + 10, y + legLength + 30, x - 45, y + legLength + 20, x - 10, y + legLength);
  endShape(CLOSE);
  
}

void drawRightLegs(float x, float y, color kaki, color sepatu) {
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
  bezierVertex(x + 130, y + legLength + 55, x + 40,  y + legLength + 30, x + 45,  y + legLength + 30); 
  bezierVertex(x + 20,  y + legLength + 20, x + 20,  y + legLength + 20, x + 30,  y + legLength);      
  bezierVertex(x + 30,  y + legLength + 30, x + 85,  y + legLength + 20, x + 50,  y + legLength);      
  endShape(CLOSE);

}

void drawBody(float x, float y, color baju) {
  fill(baju);
  beginShape();
  vertex(x - 50, y - 150);
  vertex(x - 25, y - 40);
  vertex(x - 43, y - 2);
  bezierVertex(x - 10, y + 10, x + 10, y + 10, x + 43, y - 2);
  vertex(x + 25, y - 40);
  vertex(x + 50, y - 150);
  bezierVertex(x + 25, y - 170, x - 25, y - 170, x - 50, y - 150);
  endShape(CLOSE); 
}

void drawLeftArm(float x, float y, color lengan, color tangan) {
  // lengan kiri
  fill(lengan);
  beginShape();
  vertex(x, y);
  vertex(x + 10, y + 40);
  bezierVertex(x - 10, y + 70, x - 10, y + 100, x - 20, y + 160); // turun lebih jauh
  vertex(x - 40, y + 157); // bagian bawah lengan kiri
  bezierVertex(x - 30, y + 90, x - 40, y + 110, x, y); // kembali ke atas
  endShape(CLOSE);

  //tangan kiri
  fill(tangan);
  beginShape();
  vertex(x-24, y + 160);
  vertex(x-36, y + 157);
  bezierVertex(x-40, y + 170, x- 38, y + 170,x-38, y+185);
  bezierVertex(x-32, y + 185, x-34, y + 170,x-30, y+165);
  bezierVertex(x-28, y + 170, x-24, y + 185, x-24, y + 160);
  endShape(CLOSE);
}

void drawRightArm(float x, float y, color lengan, color tangan) {
  // lengan kanan
  fill(lengan);
  beginShape();
  vertex(x + 100, y);  
  vertex(x + 90, y + 40);  
  bezierVertex(x + 110, y + 70, x + 110, y + 100, x + 120, y + 160);  // diperpanjang
  vertex(x + 140, y + 157);  // ujung bawah juga diturunkan
  bezierVertex(x + 130, y + 90, x + 140, y + 110, x + 100, y);  // disesuaikan
  endShape(CLOSE);

  //tangan kanan
  fill(tangan);
  beginShape();
  vertex(x + 124, y + 160);
  vertex(x + 136, y + 157);
  bezierVertex(x + 140, y + 170, x + 138, y + 170, x + 138, y + 185);
  bezierVertex(x + 132, y + 185, x + 134, y + 170, x + 130, y + 165);
  bezierVertex(x + 128, y + 170, x + 124, y + 185, x + 124, y + 160);
  endShape();
}


void drawNeck(float x, float y, color leher) {
  fill (leher);
  beginShape();
  vertex(x, y);
  vertex (x -5, y - 25);
  bezierVertex(x - 25 , y -20, x-5, y -20, x-25, y-25);
  vertex (x - 30, y);
  bezierVertex(x - 25 , y + 10, x-5, y + 10, x, y);
  endShape(CLOSE);
}

void drawHead(float x, float y, color warna) {
  fill(warna);
  beginShape();
  vertex(x - 40, y-10);                        
  bezierVertex(x - 40, y + 10, x - 25, y + 30, x - 15, y + 40);  
  bezierVertex(x, y + 50, x, y + 50, x + 15, y + 40);            
  bezierVertex(x + 25, y + 30, x + 40, y + 10, x + 40, y-10);
  bezierVertex(x + 40, y - 30, x + 15, y - 30, x, y- 50);
  bezierVertex(x - 15, y - 30, x - 40, y - 30, x - 40, y - 10);
  endShape(CLOSE);
}

void drawHair(float x, float y, color warna) {
  fill(warna); // warna rambut
  beginShape();

  // Mulai dari kiri atas rambut
  vertex(x - 50, y - 20);

  // Gelombang kecil di atas kepala
  bezierVertex(x - 20, y - 40, x - 10, y - 40, x , y - 35);
  bezierVertex(x, y - 40, x + 20, y - 40, x + 30, y - 30);
  bezierVertex(x + 40, y - 25, x + 45, y - 20, x + 50, y);

  // Sisi kanan atas ke bawah (dipendekkan)
  bezierVertex(x + 65, y + 10, x + 75, y + 40, x + 60, y + 60);
  bezierVertex(x + 75, y + 80, x + 70, y + 120, x + 60, y + 140);
  bezierVertex(x + 70, y + 160, x + 60, y + 180, x + 40, y + 190);
  bezierVertex(x + 30, y + 200, x + 10, y + 210, x - 5, y + 212);

  // Sisi kiri dari bawah ke atas (dipendekkan)
  bezierVertex(x - 15, y + 212, x - 35, y + 200, x - 45, y + 190);
  bezierVertex(x - 60, y + 180, x - 75, y + 160, x - 60, y + 140);
  bezierVertex(x - 75, y + 120, x - 85, y + 100, x - 70, y + 80);
  bezierVertex(x - 90, y + 60, x - 85, y + 30, x - 70, y + 20);
  bezierVertex(x - 80, y + 5, x - 60, y - 10, x - 50, y - 20); // kembali ke atas

  endShape(CLOSE);
}


void drawFace(float x, float y){
  fill(0);
  noStroke();
  ellipse(x - 20, y -6, 7, 7); 
  ellipse(x + 20, y -6, 7, 7); 
  
  //alis kiri
  stroke(0);
  strokeWeight(1);
  noFill();
  bezier(x - 30, y - 14, x - 23, y - 20, x - 17, y - 20, x - 10, y - 14); 
 
  //alis kanan
  bezier(x + 10, y - 14, x + 17, y - 20, x + 23, y - 20, x + 30, y - 14); 
  
  noFill();
  stroke(0);
  strokeWeight(1);

  beginShape();
  vertex(x - 1, y + 5);                          
  bezierVertex(x + 1, y + 8, x + 1, y + 12, x - 1, y + 15); 
  endShape();
  
  noFill();
  stroke(0);
  strokeWeight(1);

  beginShape();
  vertex(x - 10, y + 30);               
  bezierVertex(x - 5, y + 35, x + 5, y + 35, x + 10, y + 30);         
  endShape();
}
