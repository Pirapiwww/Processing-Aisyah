// ===== Variabel Global =====

PGraphics semakStatis;
boolean baruMasukScene6 = true;

int S6audio = 0;
String teksSubtitle = "";
boolean tampilkanSubtitle = false;

String currentSubtitle = "";
String currentSubtitle1 = "";
String currentSubtitle2 = "";

boolean subtitleOn = false;

boolean scene4Dimulai = false;
boolean scene3Dimulai = false;

int tunggu = 0;

void Scene6() {
  if (baruMasukScene6) {
    xAisyah = width + 50;
    baruMasukScene6 = false;

    sedangPergi = true;
    sedangJalan = true;

    stopSound(S56Latar);
    rewindSound(S56Latar);

    S6audio = 0;
    tunggu = 0;
  }

  bgScene6();

  // === ANIMASI AISYAH JALAN KIRI ===
  if (xAisyah > -50) {
    xAisyah -= kecepatan;
    S56Latar.setGain(-20);

    pushMatrix();
    translate(xAisyah, 260);
    scale(0.5);
    AisyahJalanKiri(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
    popMatrix();
  }

  // === AUDIO & SUBTITLE BERTAHAP ===
  if (S6audio == 0) {
    if (!S6Aisyah.isPlaying() && !subtitleOn) {
      changeSound(S6Aisyah);
      S56Latar.setGain(-20);
      currentSubtitle1 = "Dari kejadian kemarin, Aisyah belajar satu hal penting";
      currentSubtitle2 = "Ternyata lebih bahagia kalau kita bisa bijak dan berbagi";
      subtitleOn = true;
    } else if (subtitleOn && !S6Aisyah.isPlaying()) {
      currentSubtitle1 = "";
      currentSubtitle2 = "";
      subtitleOn = false;
      S6audio = 1;
    }

  } else if (S6audio == 1) {
    if (!S6Narator1.isPlaying() && !subtitleOn) {
      changeSound(S6Narator1);
      S56Latar.setGain(-20);
      currentSubtitle = "Aisyah pun berubah menjadi anak yang lebih bertanggung jawab";
      subtitleOn = true;
    } else if (subtitleOn && !S6Narator1.isPlaying()) {
      currentSubtitle = "";
      subtitleOn = false;
      S6audio = 2;
    }

  } else if (S6audio == 2) {
    if (!S6Narator2.isPlaying() && !subtitleOn) {
      changeSound(S6Narator2);
      S56Latar.setGain(-20);
      currentSubtitle1 = "Dia sekarang tahu, bahwa makanan itu bukan untuk dihambur-hamburkan,";
      currentSubtitle2 = "tetapi untuk disyukuri dan dibagi ke sesama";
      subtitleOn = true;
    } else if (subtitleOn && !S6Narator2.isPlaying()) {
      currentSubtitle1 = "";
      currentSubtitle2 = "";
      subtitleOn = false;
      S6audio = 3;
    }

  } else if (S6audio == 3) {
    // === BLOK PENUTUP ===
    S56Latar.setGain(-10);
    sceneBlockGambar(gambarBlok6, 40);

    if (tunggu >= 240 && tunggu <= 380) {
      sceneBlockTeksTengah("Terima kasih sudah menonton!");
    } else if (tunggu > 380) {
      exit();
    }
    tunggu++;
  }

  // === GAMBAR SUBTITLE JIKA AKTIF ===
  if (currentSubtitle != "") {
    subtitle(currentSubtitle);
  }

  if (currentSubtitle1 != "" && currentSubtitle2 != "") {
    subtitleDuaBaris(currentSubtitle1, currentSubtitle2);
  }
}

void InisiasiScene6(){
  // Gambar semak hanya sekali
  semakStatis = createGraphics(width, height);
  semakStatis.beginDraw();
  semakStatis.noStroke();
  semakStatis.fill(34, 139, 34);
  semakStatis.beginShape();
  semakStatis.vertex(0, 250);
  for (int x = 0; x <= width; x += 30) {
    semakStatis.curveVertex(x, 250 - random(20, 50));
  }
  semakStatis.vertex(width, 250);
  semakStatis.vertex(width, 300);
  semakStatis.vertex(0, 300);
  semakStatis.endShape(CLOSE);
  semakStatis.endDraw();
}

void bgScene6() {
  background(135, 206, 250);  // Langit biru

  image(semakStatis, 0, 0);   // Semak statis
  updateAwan();
  drawAwan();
  
  // Matahari
  pushMatrix();
  translate(600, 60);
  rotate(sunRotation);
  drawSun();
  popMatrix();
  
  updateBurung();
  drawBurung();

  drawFence();          
  drawGrass();          // Rumput dan jalan
  drawPohonBaru(80, 120);// Pohon animasi
  drawPohonBaru(700, 150);
  drawFlowers();        // Bunga kecil
  drawFallenLeaves();   // Daun jatuh

  angleOffset += 2;
}


// ===== RUMPUT & JALAN =====
void drawGrass() {
  noStroke();
  fill(124, 252, 0);
  rect(0, 300, width, 150);  // Rumput

  fill(80); // Jalan abu-abu
  rect(0, 420, width, 150); // Jalan
}

// ===== ILALANG =====
void drawGrassDetails() {
  stroke(34, 139, 34);
  strokeWeight(2);
  for (int i = 0; i < width; i += 5) {
    float startY = 340;
    float endY = startY + random(5, 15);
    line(i, startY, i, endY);
  }
}

// ===== BUNGA =====
void drawFlowers() {
  noStroke();
  fill(255);
  ellipse(300, 380, 10, 10);
  fill(255, 255, 0);
  ellipse(300, 380, 4, 4);

  fill(255);
  ellipse(550, 360, 10, 10);
  fill(255, 255, 0);
  ellipse(550, 360, 4, 4);
}

// ===== DAUN JATUH =====
void drawFallenLeaves() {
  noStroke();
  fill(160, 82, 45);
  ellipse(250, 380, 12, 8);
  ellipse(680, 410, 12, 8);
}
