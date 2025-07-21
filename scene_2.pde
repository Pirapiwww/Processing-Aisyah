// ---------------------- SCENE 2 -------------------------------
boolean[] makananDitinggal = new boolean[4];

int frameAwalDuduk = -1;
int durasiAnimasiDuduk = 45;

int frameAwalBerdiri = -1;
int durasiAnimasiBerdiri = 45;

int lama = 0;

boolean selesai2 = false;
boolean baruMasukScene2 = true;

int stepS2 = 0;
boolean sudahPlayNaratorS2 = false;

void Scene2() {
  // =============================================== SCENE 2 =======================================================
  if (baruMasukScene2) {
    // Reset
    for (int i = 0; i < makananDitinggal.length; i++) {
      makananDitinggal[i] = false;
    }
    stepS2 = 0;
    targetIndex = 0;
    xAisyah = -50;
    frameAwalDuduk = -1;
    baruMasukScene2 = false;

    sedangPergi = true;
    sedangJalan = true;

    stopSound(pasar);
    changeSound(latar2);
    latar2.setGain(-10);
  }

  bgScene2_4();

  float turun = 60;

  // Gambar makanan yang sudah ditinggal
  if (makananDitinggal[0]) drawEsPisangIjo(220, 260 + turun);
  if (makananDitinggal[1]) {
    drawPastel(270, 255 + turun);
    drawPuding(370, 260 + turun);
  }
  if (makananDitinggal[2]) drawNasiUduk(455, 270 + turun);
  if (makananDitinggal[3]) drawBakso(540, 255 + turun);

  // -----------------------------------------------------------
  // NOTE: x = 510 (bakso), x = 430 (nasi uduk), x = 340 (jajanan pasar), x = 200 (es pisang ijo)

  if (sedangPergi) {
    // === PERGI KE MEJA MAKAN ===
    if (targetIndex < posisiMakanan.length) {
      float targetX = posisiMakanan[targetIndex];

      if (xAisyah < targetX - 1) {
        // Jalan ke kanan
        sedangJalan = true;
        xAisyah += kecepatan;

        pushMatrix();
        translate(xAisyah, 260);
        scale(0.5);

        // Jalan dengan plastik sesuai index
        if (targetIndex == 0) {
          AisyahPlastikKanan(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
        } else if (targetIndex == 1) {
          AisyahPlastikKanan3(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
        } else if (targetIndex == 2) {
          AisyahPlastikKanan2(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
        } else {
          AisyahPlastikKanan1(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
        }

        popMatrix();
      } else {
        // Sampai di kios: berhenti dan tampilkan sesuai jumlah plastik
        sedangJalan = false;

        if (targetIndex == 0) {
          makananDitinggal[0] = true;
          drawEsPisangIjo(220, 260 + turun);

          pushMatrix();
          translate(xAisyah, 260);
          scale(0.5);
          AisyahKananPlastik3(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
          popMatrix();

        } else if (targetIndex == 1) {
          makananDitinggal[1] = true;
          drawPastel(270, 255 + turun);
          drawPuding(370, 260 + turun);

          pushMatrix();
          translate(xAisyah, 260);
          scale(0.5);
          AisyahKananPlastik2(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
          popMatrix();

        } else if (targetIndex == 2) {
          makananDitinggal[2] = true;
          drawNasiUduk(455, 270 + turun);

          pushMatrix();
          translate(xAisyah, 260);
          scale(0.5);
          AisyahKananPlastik1(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
          popMatrix();

        } else {
          makananDitinggal[3] = true;
          drawBakso(540, 255 + turun);

          pushMatrix();
          translate(xAisyah, 260);
          scale(0.5);
          drawAisyahKanan(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
          popMatrix();
        }

        // Tunggu untuk menaruh makanan
        if (frameCount % 20 == 0) {
          targetIndex++;
          if (targetIndex == posisiMakanan.length) {
            sedangPergi = false;
          }
        }
      }
    }

  } else if (xAisyah > -50 && selesai2 == true) {
    xAisyah -= kecepatan;
  
    pushMatrix();
    translate(xAisyah, 260);
    scale(0.5);
    AisyahJalanKiri(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
    popMatrix();
  
    if (!sudahPlayNaratorS2) {
      changeSound(naratorS2);
      subtitle("Aisyah makan dengan lahap. Tapi semua makanan itu terlalu banyak utuk dimakan sendiri");
      sudahPlayNaratorS2 = true;
    } else {
      subtitle("Aisyah makan dengan lahap. Tapi semua makanan itu terlalu banyak utuk dia makan sendiri");
    }
   // BLOK TAMBAHAN UNTUK PASTIKAN PINDAH SCENE TANPA KEDIP
  } else if (xAisyah <= -50 && selesai2 == true && !naratorS2.isPlaying()) {
    currentScene = 3;
  } else {
    // === JALAN SEDIKIT KE KANAN, LALU DUDUK MENGHADAP KIRI ===
    if (xAisyah < posisiMakanan[posisiMakanan.length - 1] + 100 && targetIndex >= posisiMakanan.length) {
      xAisyah += kecepatan;

      pushMatrix();
      translate(xAisyah, 260);
      scale(0.5);
      AisyahJalanKanan(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
      popMatrix();

    } else {
      if (frameAwalDuduk == -1) {
        frameAwalDuduk = frameCount;
      }

      int elapsed = frameCount - frameAwalDuduk;

      if (elapsed < durasiAnimasiDuduk) {
        // Animasi duduk skala sama
        pushMatrix();
        translate(xAisyah + 50, 300);
        scale(0.5);
        animasiAisyahDudukKiri(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, elapsed);
        popMatrix();

      } else {
        changeSound(S2Aisyah1);
        if (S2Aisyah1.isPlaying()) {
          latar2.setGain(-20);

          // === Tahap 1 ===
          if (stepS2 == 0) {
            if (!S2Aisyah1.isPlaying()) {
              changeSound(S2Aisyah1);
            }
            animasiDuduk();
            subtitle("Hmm... nasi uduknya mantap!");

            if (!S2Aisyah1.isPlaying()) {
              stepS2 = 1;
            }

          // === Tahap 2 ===
          } else if (stepS2 == 1) {
            if (!S2Aisyah2.isPlaying()) {
              changeSound(S2Aisyah2);
            }
            animasiDuduk();
            subtitle("Pastelnya gurih banget, enak-enak semua...");

            if (!S2Aisyah2.isPlaying()) {
              stepS2 = 2;
            }

          // === Tahap 3 ===
          } else if (stepS2 == 2) {
            if (!S2Aisyah3.isPlaying()) {
              changeSound(S2Aisyah3);
            }
            animasiDuduk();
            subtitle("Baksonya juga... ah, es pisang hijau dulu, deh");

            if (!S2Aisyah3.isPlaying()) {
              stepS2 = 3; // Selesai, atau lanjut ke scene berikutnya
              frameAwalBerdiri = frameCount;
              int elapsedBerdiri = frameCount - frameAwalBerdiri;

              if (elapsedBerdiri < durasiAnimasiBerdiri) {
                animasiAisyahBerdiriKiri(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, elapsedBerdiri);
                selesai2 = true;
              }
            }
          }
        }
      }
    }
  }
}

void animasiDuduk() {
  pushMatrix();
  translate(xAisyah + 50, 300);
  scale(0.5);
  tanganAisyahKiri(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, t);
  popMatrix();
}

void bgScene2_4(){
  drawWall();
  drawFloor();
  
// Jendela
  pushMatrix();
  translate(-450, 0); 
  drawWindow();
  popMatrix();
  
  drawCabinetWithClearDrawers(); // Laci
  drawOvenIntegrated();       // Oven
  drawStoveCompact();         // Kompor
  drawHood();
  drawMicrowave();
  drawFridgeBigSilver();      // Kulkas
  drawTable();
  drawTrashBinLarge();
  pushMatrix();
  translate(628, 417);
  scale(0.5);
  kursiKiri(0,0);  
  popMatrix();
  
  pushMatrix();
  translate(70, 417);
  scale(0.5);
  kursiKanan(0,0);  
  popMatrix();
}

// === Tampilan Dasar ===
void drawWall() {
  fill(255, 240, 220); 
  rect(0, 0, width, 400);
}

void drawFloor() {
  fill(240, 150, 100);
  rect(0, 350, width, 150);
}

void drawWindow() {
  fill(255);
  int x = 500;
  int y = 100;
  int w = 150;
  int h = 100;
  rect(x, y, w, h);

  stroke(0);
  strokeWeight(2);
  line(x, y + h / 2, x + w, y + h / 2);
  line(x + w / 2, y, x + w / 2, y + h);
  noStroke();

  fill(180, 235, 255);
  rect(x + 5, y + 5, w / 2 - 10, h / 2 - 10);
  rect(x + w / 2 + 5, y + 5, w / 2 - 10, h / 2 - 10);
  rect(x + 5, y + h / 2 + 5, w / 2 - 10, h / 2 - 10);
  rect(x + w / 2 + 5, y + h / 2 + 5, w / 2 - 10, h / 2 - 10);

  fill(50, 40, 20);
  rect(x - 10, y, 10, h);
  rect(x + w, y, 10, h);
  stroke(80, 50, 20);
  strokeWeight(3);
  line(x - 10, y, x + w + 10, y);
  noStroke();
}

// === Elemen Dapur ===
void drawCabinetWithClearDrawers() {
  fill(180, 220, 200);
  rect(160, 250, 120, 100); 
  rect(280, 250, 120, 100); 
  rect(520, 250, 100, 100); 

  fill(70); // pegangan laci
  rect(190, 300, 60, 8);
  rect(310, 300, 60, 8);
  rect(540, 300, 60, 8);
}

void drawOvenIntegrated() {
  fill(100, 130, 200);
  rect(400, 270, 120, 80); 
  fill(80); 
  rect(400, 265, 120, 5);
}

void drawStoveCompact() {
  fill(70);
  rect(400, 250, 120, 15); // dasar kompor

  fill(30); // 2 tungku
  ellipse(430, 258, 20, 20);
  ellipse(510, 258, 20, 20);
}

void drawHood() {
  fill(170, 200, 230);
  rect(440, -50, 40, 180); 
  rect(410, 130, 100, 20);
}

void drawMicrowave() {
  fill(200);
  rect(180, 210, 80, 40);  
  fill(100);
  rect(190, 215, 50, 30);  
}

void drawFridgeBigSilver() {
  fill(180); 
  rect(650, 120, 110, 230); 
  fill(120);
  rect(650, 230, 110, 5);   
}

void drawTable() {
  float turun= 60;
  fill(200, 70, 50);
  rect(160, 280 + turun, 440, 20);
  rect(170, 300 + turun, 13, 120);
  rect(580, 300 + turun, 13, 120);
}

void drawTrashBinLarge() {
  fill(90, 90, 200);
  rect(60, 290, 40, 60);  
  fill(40);
  ellipse(80, 290, 45, 12);
}

// ================================ FOOD ======================
void drawPastel(float x, float y) {
  // Daun pisang
  fill(100, 180, 90);
  rect(x, y, 50, 30, 5); 
  
  // 3 pastel kecil
  for (int i = 0; i < 3; i++) {
    float px = x + 8;
    float py = y + 7 + i * 8;
    
    fill(250, 220, 100); 
    arc(px + 20, py, 30, 15, PI, TWO_PI); 
    ellipse(px + 20, py, 30, 10); 
    
    // Pinggiran lipatan
    fill(230, 190, 80);
    for (int j = 0; j < 10; j++) {
      float angle = map(j, 0, 9, PI, TWO_PI);
      float lx = px + 20 + cos(angle) * 15;
      float ly = py + sin(angle) * 7;
      ellipse(lx, ly, 2.5, 2.5);
    }
  }
}

void drawEsPisangIjo(float x, float y) {
  fill(180, 230, 250); // mangkuk
  ellipse(x, y+10, 50, 20);
  fill(255, 100, 150); // es merah
  ellipse(x, y, 40, 15);
  fill(0, 200, 100); // pisang ijo
  for (int i = -1; i <= 1; i++) {
    ellipse(x + i * 10, y - 8, 12, 12);
    fill(255, 230, 100);
    ellipse(x + i * 10, y - 8, 6, 6);
    fill(0, 200, 100);
  }
}

void drawBakso(float x, float y) {
  pushMatrix();
  translate(x, y);

  // Mangkuk atas 
  fill(230);
  ellipse(0, 0, 60, 30); 

  // Mangkuk bawah 
  fill(200);
  arc(0, 10, 60, 35, 0, PI); 
  
  // Kuah/mie
  fill(255, 230, 120);
  ellipse(0, -3, 48, 16);

  // Bola-bola bakso
  fill(150, 120, 100);
  ellipse(-10, -5, 10, 10);
  ellipse(0, -2, 12, 12);
  ellipse(8, -6, 10, 10);

  // Sayuran
  fill(100, 200, 100);
  ellipse(15, 5, 8, 6);
  ellipse(12, 8, 6, 5);

  // Sumpit 
  stroke(80);
  strokeWeight(2);
  line(-15, -12, 10, -20);
  line(-13, -10, 12, -18);
  noStroke();

  popMatrix();
}

void drawPuding(float x, float y) {
  fill(210, 160, 100);
  ellipse(x, y+15, 40, 15); // dasar
  rect(x - 20, y - 10, 40, 25, 10);
  fill(130, 80, 40); // sirup coklat
  rect(x - 20, y - 10, 40, 10, 10);
  // Stroberi pertama
  fill(255, 50, 80); 
  ellipse(x - 6, y - 12, 10, 10);
  // Stroberi kedua
  fill(255, 50, 80); 
  ellipse(x + 6, y - 13, 10, 10);
}


void drawNasiUduk(float x, float y) {
  // Piring
  fill(245, 222, 179);
  ellipse(x, y, 60, 30);

  // Nasi
  fill(255);
  ellipse(x, y, 30, 20);

  // Telur (kuning telur & putihnya)
  fill(255); 
  ellipse(x - 18, y + 5, 14, 10);
  fill(255, 200, 50); 
  ellipse(x - 18, y + 5, 6, 6);

  // Ayam goreng
  fill(230, 140, 50);
  ellipse(x + 18, y + 5, 18, 12);
  ellipse(x + 22, y + 2, 10, 6); 

  // Kacang
  fill(160, 80, 50);
  ellipse(x, y + 10, 4, 4);
  ellipse(x - 4, y + 12, 4, 4);
  ellipse(x + 4, y + 12, 4, 4);

  // Timun (3 potong)
  fill(100, 200, 100);
  ellipse(x - 5, y - 10, 6, 6);
  ellipse(x, y - 12, 6, 6);
  ellipse(x + 5, y - 10, 6, 6);
}

// ================================ KURSI ======================
color warna = #54160d;

void kursiKiri(float x, float y){
  color warna = #54160d;
  
  kayu(x, y, warna, 0);
  kayu(x + 100, y, warna, 0);
  
  pushMatrix();
    translate(x, y);
    rotate(radians (90));
    kayu(-10, -120, warna, 30);
  popMatrix();
  
  kayu(x + 100, y - 140, warna, 30);
  
}

void kursiKanan(float x, float y){
  kayu(x, y, warna, 0);
  kayu(x + 100, y, warna, 0);
  
  pushMatrix();
    translate(x, y);
    rotate(radians (90));
    kayu(-10, -120, warna, 30);
  popMatrix();
  
  kayu(x , y - 140, warna, 30);
}

//customWidth untuk menambah lebar
void kayu(float x, float y, color warna, int customWidth){
  
  fill(warna);
  
  beginShape();
  vertex(x ,y);
  vertex(x , y + 100 + customWidth);
  vertex(x + 10, y + 100 + customWidth);
  vertex(x + 10, y);
  endShape(CLOSE);
}
