boolean baruMasukScene3 = true;
int stepS3 = 0;
boolean selesai3 = false;

int AisyahJalan = 600;
boolean balik = false;
boolean sudahPlayNarator = false; // TAMBAHKAN INI DI VARIABEL GLOBAL

void Scene3() {
  if (baruMasukScene3) {
    // Reset
    targetIndex = 0;
    xAisyah = -50;
    baruMasukScene3 = false;

    selesai3 = false;
    stepS3 = 0;
    sedangPergi = true;
    sedangJalan = true;

    rewindSound(latar3);
    stopSound(latar2);
    changeSound(latar3);

    balik = false;
    sudahPlayNarator = false; // TAMBAHKAN INI DI VARIABEL GLOBAL
  }

  bgScene3();

  if (!balik) {
    // === Aisyah Jalan ke Kanan ===
    if (xAisyah <= AisyahJalan) {
      xAisyah += kecepatan;

      pushMatrix();
      translate(xAisyah, 260);
      scale(0.5);
      AisyahJalanKanan(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
      popMatrix();

    } else {
      // === Aisyah Sampai Tujuan, Berdiri Menghadap Kiri ===
      latar3.setGain(-10);

      if (!S3Aisyah.isPlaying()) {
        changeSound(S3Aisyah);
      }

      pushMatrix();
      translate(xAisyah, 260);
      scale(0.5);
      drawAisyahKiri(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
      popMatrix();

      if (S3Aisyah.isPlaying()) {
        subtitle("Aisyah: Aduh.... Perutku.... Kekenyangan banget....");
      } else {
        balik = true;
      }
    }

  } else {
    // === Aisyah Jalan Balik ke Kiri ===
    xAisyah -= kecepatan;

    pushMatrix();
    translate(xAisyah, 260);
    scale(0.5);
    AisyahJalanKiri(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
    popMatrix();

    latar3.setGain(-10);

    // === Mainkan narator hanya satu kali ===
    if (!sudahPlayNarator) {
      changeSound(S3Narator);
      sudahPlayNarator = true;
    }

    if (S3Narator.isPlaying()) {
      subtitleDuaBaris(
        "Karena terlalu banyak makan, Aisyah merasa mual dan tidak nyaman",
        "Makanan yang tersisa pun masih banyak di meja"
      );
    } else if (xAisyah <= -50) {
      currentScene = 4;
    }
  }
}


void bgScene3() {
  drawBackground();
  drawWindow1();
  drawTVCabinet();
  drawTV();
  drawCartoonSofa(400, 290);
  drawWallClock(230, 120);  // Jam dinding
}

// ------------------------ Latar & Objek ----------------------------

void drawBackground() {
  background(230, 215, 160);
  fill(130, 85, 40);
  rect(0, 400, width, 100);
  fill(255);
  rect(0, 395, width, 3);
}

void drawWindow1() {
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

void drawTVCabinet() {
  int x = 30;
  int y = 340;
  int w = 300;
  int h = 80;

  fill(255);
  rect(x, y, w, h);

  fill(220); rect(x + 10, y + 20, 65, 45);
  fill(235); rect(x + 80, y + 20, 65, 45);
  fill(200); rect(x + 150, y + 20, 65, 45);
  fill(180); rect(x + 220, y + 20, 65, 45);

  fill(180);
  rect(x + 10, y + h, 8, 20);
  rect(x + w - 18, y + h, 8, 20);
}

void drawTV() {
  int centerX = 180;
  int tvWidth = 180;
  int tvHeight = 110;
  int topY = 230;

  fill(0);
  rect(centerX - tvWidth / 2, topY, tvWidth, tvHeight);

  fill(70);
  rect(centerX - 10, topY + tvHeight, 20, 5);
  rect(centerX - 25, topY + tvHeight + 5, 50, 5);
}

void drawCartoonSofa(float x, float y) {
  color sofaColor = color(170, 190, 255);
  color legColor = color(60);
  float w = 320;
  float backrestH = 70;
  float seatH = 60;
  float armH = 130;

  fill(sofaColor);
  stroke(0);
  strokeWeight(2);
  rect(x, y, w, backrestH, 10);
  rect(x, y + backrestH, w, seatH);
  line(x + w / 3, y + backrestH, x + w / 3, y + backrestH + seatH);
  line(x + 2 * w / 3, y + backrestH, x + 2 * w / 3, y + backrestH + seatH);
  rect(x - 20, y + 10, 20, armH);
  rect(x + w, y + 10, 20, armH);

  fill(legColor);
  noStroke();
  rect(x + 15, y + backrestH + seatH, 10, 20);
  rect(x + w - 25, y + backrestH + seatH, 10, 20);
}

// ------------------------ Jam Dinding ----------------------------

void drawWallClock(float x, float y) {
  pushMatrix();
  translate(x, y);

  float radius = 40;
  fill(255);
  stroke(0);
  strokeWeight(2);
  ellipse(0, 0, radius * 2, radius * 2); // jam utama

  // Angka 1–12 (dikasih jarak lebih jauh)
  textAlign(CENTER, CENTER);
  textSize(10);
  fill(0);
  for (int i = 1; i <= 12; i++) {
    float angle = radians(i * 30 - 90);
    float tx = cos(angle) * (radius - 6);   // jarak dari tengah lebih besar
    float ty = sin(angle) * (radius - 6);
    text(i, tx, ty);
  }

  // Simulasi waktu cepat (lebih cepat lagi)
  float t = millis() / 10.0;
  float m = map((t / 60.0) % 60, 0, 60, 0, TWO_PI);
  float h = map((t / 3600.0) % 12, 0, 12, 0, TWO_PI);

  // Jarum jam
  stroke(0);
  strokeWeight(4);
  line(0, 0, 22 * cos(h - HALF_PI), 22 * sin(h - HALF_PI));

  // Jarum menit
  strokeWeight(3);
  line(0, 0, 30 * cos(m - HALF_PI), 30 * sin(m - HALF_PI));

  // Titik tengah
  fill(0);
  noStroke();
  ellipse(0, 0, 5, 5);

  popMatrix();
}
