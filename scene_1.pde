// ----------------------- SCENE 1 -----------------------------
int jumlahAwan = 12;
float[] awanX = new float[jumlahAwan];
float[] awanY = new float[jumlahAwan];
float[] awanSpeed = new float[jumlahAwan];
float[] awanScale = new float[jumlahAwan];

float[] birdY = {60, 80, 55, 70, 100};
float[] birdYSpeed = {0.6, 0.7, 0.5, 0.65, 0.55};
boolean[] birdGoingUp = {true, false, true, false, true};

float angleOffset = 0; // Untuk animasi daun

void setupScene1(){ 
  float posisiX = 0;
  for (int i = 0; i < jumlahAwan; i++) {
    awanX[i] = posisiX;
    awanY[i] = random(30, 130);
    awanSpeed[i] = random(0.2, 0.6);
    awanScale[i] = random(0.6, 1.3);
    posisiX += random(100, 200);
  }
}
boolean naratorS1SudahMain = false;
boolean baruMasukScene1 = true;
boolean sudahMainAisyah5 = false;

void Scene1(){
  // ================================================ SCENE 1 ==========================================================
  if (baruMasukScene1) {
    // Reset
    targetIndex = 0;
    xAisyah = -50;
    frameAwalDuduk = -1;
    baruMasukScene1 = false;

    sedangPergi = true;
    sedangJalan = true;

    stopSound(S56Latar);
    naratorS1SudahMain = false; // Reset flag narator saat masuk scene baru
    sudahMainAisyah5 = false;   // Reset juga
    
    stopSound(S56Latar);
  }

  rewindSound(pasar);
  bgScene1();
  pasar.setGain(-10);

  // Jalankan narator hanya sekali di awal, tanpa mengganggu subtitle Aisyah
  boolean sedangDialogAisyah = S1Aisyah1.isPlaying() || S1Aisyah2.isPlaying() || S1Aisyah3.isPlaying() || S1Aisyah4.isPlaying() || S1Aisyah5.isPlaying();
  
  if (!naratorS1.isPlaying() && !naratorS1SudahMain && !sedangDialogAisyah) {
    changeSound(naratorS1);
    naratorS1SudahMain = true;
  }

  if (naratorS1.isPlaying()) {
    subtitle("Hari itu, Aisyah pergi ke pasar. Matanya berbinar melihat makanan lezat dimana-mana");
  }

  if (!naratorS1.isPlaying()){
    if (sedangPergi) {
      // === PERGI KE KIOS ===
      if (targetIndex < posisiKios.length) {
        float targetX = posisiKios[targetIndex];

        if (xAisyah < targetX - 1) {
          // Jalan ke kanan
          sedangJalan = true;
          xAisyah += kecepatan;

          pushMatrix();
          translate(xAisyah, 260);
          scale(0.5);

          // Jalan dengan plastik sesuai index
          if (targetIndex == 0) {
            pasar.setGain(0);
            AisyahJalanKanan(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
          } else if (targetIndex == 1) {
            pasar.setGain(0);
            AisyahPlastikKanan1(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
          } else if (targetIndex == 2) {
            pasar.setGain(0);
            AisyahPlastikKanan2(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
          } else {
            pasar.setGain(0);
            AisyahPlastikKanan3(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
          }

          popMatrix();

        } else {
          // Sampai di kios: berhenti dan tampilkan sesuai jumlah plastik
          sedangJalan = false;
          if (targetIndex == 0) {
            changeSound(S1Aisyah1);

            if(S1Aisyah1.isPlaying()){
              pushMatrix();
              translate(xAisyah, 260);
              scale(0.5);
              drawAisyahKanan(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
              popMatrix();
              subtitle("Aisyah: Nasi uduk sama bakso? Wangi banget");

              if (!S1Aisyah1.isPlaying()){
                targetIndex++;
                sedangPergi = targetIndex < posisiKios.length;
              }
            }

          } else if (targetIndex == 1) {
            changeSound(S1Aisyah2);

            if(S1Aisyah2.isPlaying()){
              pushMatrix();
              translate(xAisyah, 260);
              scale(0.5);
              AisyahKananPlastik1(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
              popMatrix();
              subtitle("Aisyah: Aduh... semua pengen aku coba");

              if (!S1Aisyah2.isPlaying()){
                targetIndex++;
                sedangPergi = targetIndex < posisiKios.length;
              }
            }

          } else if (targetIndex == 2) {
            changeSound(S1Aisyah3);

            if(S1Aisyah3.isPlaying()){
              pushMatrix();
              translate(xAisyah, 260);
              scale(0.5);
              AisyahKananPlastik2(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
              popMatrix();
              subtitle("Aisyah: Wah, pastel! Udah lama ngak makan ini");

              if (!S1Aisyah3.isPlaying()){
                targetIndex++;
                sedangPergi = targetIndex < posisiKios.length;
              }
            }

          } else {
            changeSound(S1Aisyah4);

            if(S1Aisyah4.isPlaying()){
              pushMatrix();
              translate(xAisyah, 260);
              scale(0.5);
              AisyahKananPlastik3(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
              popMatrix();
              subtitle("Aisyah: Es pisang hijau! Seger banget......");

              if (!S1Aisyah4.isPlaying()){
                targetIndex++;
                sedangPergi = false;
              }
            }
          }
        }
      } 
    } else {
      // === BALIK KE KIRI ===
      if (xAisyah > -50) {
        xAisyah -= kecepatan;

        pushMatrix();
        translate(xAisyah, 260);
        scale(0.5);
        AisyahPlastikKiri(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
        popMatrix();

        if (!sudahMainAisyah5) {
          changeSound(S1Aisyah5);
          sudahMainAisyah5 = true;
        }

        if (S1Aisyah5.isPlaying()) {
          subtitle("Hihi, ini semua buat aku sendiri! Pasti puas banget!");
        }

      } else {
        currentScene = 2; // pindah ke scene 2
      }
    }

  }
  // ===============================================================================================================
}



void bgScene1(){
  background(#C6EFFF);  // latar pagi, diletakkan di luar transformasi supaya tidak terpengaruh scale
  // Matahari
  pushMatrix();
  translate(600, 60);
  rotate(sunRotation);
  noStroke();
  drawSun();
  popMatrix();
  
  // Gambar isi scene
  updateAwan();
  drawAwan();
  updateBurung();
  drawBurung();
  
  drawJalan();
  // ----------------
  int geserAtas = 50;
  // ----------------
  
  drawLampuTiang(670, 445 - geserAtas);     
  drawPohonBaru(727, 200 - geserAtas);
  drawPohonBaru(55, 200 - geserAtas);

  drawKiosBaru(190, 340 - geserAtas, #FFC107, "Bakso");
  drawKiosBaru(320, 340 - geserAtas, #FF6F61, "Nasi Uduk");
  drawKiosBaru(450, 340 - geserAtas, #FFB74D, "Jajanan Pasar");
  drawKiosBaru(580, 340 - geserAtas, #B39DDB, "Es Pisang Ijo");

  angleOffset += 2;

}

// ====================== Latar ======================
void drawBackgroundPagi() {
  background(#C6EFFF);
}

void drawMatahari() {
  fill(255, 223, 0);
  noStroke();
  ellipse(380, 110, 60, 60);
}

// ====================== Awan ======================
void updateAwan() {
  for (int i = 0; i < jumlahAwan; i++) {
    awanX[i] += awanSpeed[i];
    if (awanX[i] > width + 100) {
      awanX[i] = -random(100, 200);
      awanY[i] = random(30, 130);
      awanSpeed[i] = random(0.2, 0.6);
      awanScale[i] = random(0.6, 1.3);
    }
  }
}

void drawAwan() {
  fill(255);
  noStroke();
  for (int i = 0; i < jumlahAwan; i++) {
    pushMatrix();
    translate(awanX[i], awanY[i]);
    scale(awanScale[i]);
    ellipse(0, 0, 60, 40);
    ellipse(30, -10, 50, 35);
    ellipse(60, 0, 60, 40);
    popMatrix();
  }
}

// ====================== Burung ======================
void updateBurung() {
  for (int i = 0; i < birdY.length; i++) {
    if (birdGoingUp[i]) {
      birdY[i] -= birdYSpeed[i];
      if (birdY[i] < 40) birdGoingUp[i] = false;
    } else {
      birdY[i] += birdYSpeed[i];
      if (birdY[i] > 120) birdGoingUp[i] = true;
    }
  }
}

void drawBurung() {
  stroke(0);
  strokeWeight(2);
  noFill();

  drawBurungLengkung(120, birdY[0], 20);
  drawBurungLengkung(300, birdY[1], 25);
  drawBurungLengkung(460, birdY[2], 30);
  drawBurungLengkung(600, birdY[3], 22);
  drawBurungLengkung(200, birdY[4], 18);
}

void drawBurungLengkung(float x, float y, float size) {
  float half = size / 2;
  float height = size / 4;

  beginShape();
  vertex(x - half, y);
  bezierVertex(x - half + 5, y - height, x - 5, y - height, x, y);
  bezierVertex(x + 5, y - height, x + half - 5, y - height, x + half, y);
  endShape();
}

// ====================== Jalan & Lampu ======================
void drawJalan() {
  // ----------------
  int geserKiri = 50;
  int geserAtas = 50;
  // ----------------
  
  fill(150);
  rect(0 - geserKiri, 400 - geserAtas, width + geserKiri, 200);
  fill(#A7D28D);
  rect(0 - geserKiri, 470 - geserAtas, width + geserKiri, 10);
  fill(60);
  rect(0 - geserKiri, 480 - geserAtas, width + geserKiri, 100);
}

void drawLampuTiang(float x, float bottomY) {
  stroke(80);
  strokeWeight(6);
  line(x, 160.0, x, bottomY);
  noStroke();
  fill(255, 255, 150);
  ellipse(x, 160.0, 30, 30);
}

// ====================== Kios dengan Spanduk ======================
void drawKiosBaru(float x, float y, color warnaKain, String namaKios) {
  float lebar = 110;
  float tinggiMeja = 30;
  float tinggiAtas = 80;
  float mejaX = x - lebar / 2;
  
  noStroke();
  // Kain meja dan badan kios
  fill(warnaKain);
  rect(mejaX, y, lebar, tinggiMeja);
  fill(#FFF176);
  rect(mejaX, y + tinggiMeja, lebar, 25);
  fill(darker(warnaKain));
  rect(mejaX, y + tinggiMeja + 25, lebar, 35);

  // Tiang
  stroke(80);
  strokeWeight(4);
  line(mejaX, y - tinggiAtas, mejaX, y + tinggiMeja + 60);
  line(mejaX + lebar, y - tinggiAtas, mejaX + lebar, y + tinggiMeja + 60);
  noStroke();

  // Kanopi atas
  for (int i = 0; i < 5; i++) {
    fill(i % 2 == 0 ? warnaKain : color(255));
    arc(mejaX + i * (lebar / 5) + (lebar / 10), y - tinggiAtas, lebar / 5, 50, PI, TWO_PI);
  }

  // Spanduk bawah
  float spandukY = y + tinggiMeja + 25 + 35;
  fill(#FFFFFF);
  stroke(0);
  strokeWeight(1.5);
  rect(mejaX, spandukY, lebar, 25, 5);

  // Teks nama kios
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(12);
  text(namaKios, x, spandukY + 12);
}

// ====================== Pohon ======================
void drawPohonBaru(float x, float y) {
  stroke(#5C2F12);
  strokeWeight(8);
  line(x + 12, y + 40, x + 12, y + 240);
  line(x + 12, y + 110, x - 20, y + 60); 
  line(x + 12, y + 90, x + 30, y + 50); 
  line(x + 12, y + 60, x, y + 20); 
  line(x + 12, y + 60, x + 28, y + 10); 
  noStroke();

  float wave = sin(radians(angleOffset)) * 3;

  // Daun atas (bergerak)
  fill(#6DCB42);
  ellipse(x + 12 + wave, y, 90, 70);
  ellipse(x - 10 - wave, y + 30, 80, 60);
  ellipse(x + 35 + wave, y + 30, 70, 60);

  fill(#9BE565);
  ellipse(x + wave, y, 60, 50);
  ellipse(x + 28 - wave, y - 10, 60, 50);
  ellipse(x + 10 + wave, y + 35, 50, 40);

  // Daun bawah (diam)
  fill(#A7D28D);
  ellipse(x - 15, y + 240, 50, 30);
  ellipse(x + 10, y + 235, 60, 35);
  ellipse(x + 35, y + 240, 50, 30);
} 

// ====================== Util ======================
color darker(color c) {
  return color(red(c) * 0.6, green(c) * 0.6, blue(c) * 0.6);
}

// =================== PLASTIK ======================
void drawPlastik(float x, float y, color warna) {
  
  fill(warna);

  beginShape();

  // Kiri bawah → kiri atas (melengkung menyempit ke atas)
  vertex(x, y + 120); // dulu y + 140 (diangkat 20px)
  bezierVertex(x - 10, y + 90, x + 10, y + 40, x + 30, y); // sisi kiri naik

  // Atas kiri → atas kanan (lempeng pendek)
  bezierVertex(x + 45, y - 5, x + 55, y - 5, x + 70, y); // atas

  // Kanan atas → kanan bawah (melengkung melebar)
  bezierVertex(x + 90, y + 40, x + 110, y + 90, x + 100, y + 120); // dulu y + 140

  // Bawah plastik → lengkung balik ke kiri
  bezierVertex(x + 80, y + 140, x + 20, y + 140, x, y + 120); // dulu y + 160 dan y + 140

  endShape(CLOSE);

  // Lubang tentengan tetap
  fill(255); 
  beginShape();
  float lx = x + 30;
  float ly = y + 5;

  vertex(lx, ly + 10);
  bezierVertex(lx, ly, lx + 40, ly, lx + 40, ly + 10);
  bezierVertex(lx + 40, ly + 20, lx, ly + 20, lx, ly + 10);
  endShape(CLOSE);
}
