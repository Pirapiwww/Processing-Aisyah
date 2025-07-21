float leafAngle = 0;  
float sunRotation = 0;

boolean baruMasukScene5 = true;

int xTetangga = 850;

//warna pakaian tetangga
color bajuTetangga = #689fd9;
color lenganTetangga = #4a739e;
color celanaTetangga = #213447;
color sepatuTetangga = #36b39a;

float[] posisiJalan = {100, 400};

int stepS5 = 0;
boolean selesai5 = false;

void Scene5() {
  if (baruMasukScene5) {
    // Reset
    targetIndex = 0;
    stepS5 = 0;
    xAisyah = -50;
    frameAwalDuduk = -1;
    baruMasukScene5 = false;
    selesai5 = false;
    sedangPergi = true;
    sedangJalan = true;

    stopAllSound();
    stopSound(S4latar2);
  }

  bgScene5();
  rewindSound(S56Latar);
  S56Latar.setGain(-5);

  if (sedangPergi) {
    if (targetIndex < posisiJalan.length) {
      float targetX = posisiJalan[targetIndex];

      if (xAisyah < targetX - 1) {
        // Jalan ke kanan
        sedangJalan = true;
        xAisyah += kecepatan;
        xTetangga -= kecepatan;

        pushMatrix();
        translate(xAisyah, 260);
        scale(0.5);
        AisyahPlastikKanan2(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
        popMatrix();

        if (targetIndex == 1) {
          pushMatrix();
          translate(xTetangga, 260);
          scale(0.5);
          TetanggaJalanKiri(0, 0, kulit, rambut, bajuTetangga, lenganTetangga, celanaTetangga, sepatuTetangga, frameCount);
          popMatrix();
        } else {
          xTetangga = 850; // reset posisi tetangga untuk muncul nanti
        }

      } else {
        // Sudah sampai target, tidak jalan
        sedangJalan = false;

        if (targetIndex == 0) {
          // Dialog Aisyah kasih makanan
          S56Latar.setGain(-15);
          if (!S5Aisyah1.isPlaying()) {
            changeSound(S5Aisyah1);
          }

          pushMatrix();
          translate(xAisyah, 260);
          scale(0.5);
          AisyahKananPlastik2(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
          popMatrix();

          if (S5Aisyah1.isPlaying()) {
            subtitle("Aisyah: Assalamualaikum, pak ini ada makanan sisa masih enak dan bersih, semoga bermanfaat yah");
          } else {
            targetIndex++;
            sedangPergi = true;
          }

        } else if (targetIndex == 1) {
          // Dialog tetangga & Aisyah
          if (stepS5 == 0) {
            if (!S5Tetangga.isPlaying()) {
              changeSound(S5Tetangga);
            }

            S56Latar.setGain(-10);
            S5diam();
            subtitleDuaBaris("Tetangga: Waalaikumusallam Aisyah, wah Terima kasuh yah, ",
                              "kamu anak yang baik. Jangan mubazir lagi yah");

            if (!S5Tetangga.isPlaying()) {
              stepS5 = 1;
            }

          } else if (stepS5 == 1) {
            if (!S5Aisyah2.isPlaying()) {
              changeSound(S5Aisyah2);
            }

            S56Latar.setGain(-15);
            S5diam();
            subtitle("Aisyah: Iya pak. Aisyah sekarang tau, ngak semua yang enak harus dibeli");

            if (!S5Aisyah2.isPlaying()) {
              stepS5 = 2;
              selesai5 = true;
              sedangPergi = false;
            }
          }
        }
      }
    }
  }

  // === BALIK KE KIRI ===
  else if (selesai5) {
    if (xAisyah > -50) {
      xAisyah -= kecepatan;
      xTetangga += kecepatan;

      pushMatrix();
      translate(xAisyah, 260);
      scale(0.5);
      AisyahJalanKiri(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
      popMatrix();

      pushMatrix();
      translate(xTetangga, 260);
      scale(0.5);
      TetanggaPlastikKanan2(0, 0, kulit, rambut, bajuTetangga, lenganTetangga, celanaTetangga, sepatuTetangga, frameCount);
      popMatrix();

    } else {
      currentScene = 6; // pindah ke scene berikutnya
    }
  }
}


void S5diam(){
  pushMatrix();
  translate(xAisyah, 260);
  scale(0.5);
  drawAisyahKanan(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
  popMatrix();
  
  pushMatrix();
  translate(xTetangga, 260);
  scale(0.5);
  TetanggaKiriPlastik2(0, 0, kulit, rambut, bajuTetangga, lenganTetangga, celanaTetangga, sepatuTetangga);
  popMatrix();
}

void bgScene5() {
  // Background langit
  background(135, 206, 250);
  
  // Matahari
  pushMatrix();
  noStroke();
  translate(600, 60);
  rotate(sunRotation);
  drawSun();
  popMatrix();

  updateBurung();
  drawBurung();
  updateAwan();
  drawAwan();

  // Tanah
  fill(144, 238, 144);
  rect(0, 355, width, 200);

  // Rumah
  pushMatrix();
  translate(400, 280);
  scale(1.75);
  drawHouse();
  popMatrix();
  
  // Jalan tanah
  fill(205, 175, 149);
  ellipse(400, 450, 300, 80);
  
  // Pohon kiri
  pushMatrix();
  translate(45, 150);
  drawTreeTrunk(0, 0);
  drawLeavesAnimated(0, 0);
  popMatrix();

  // Pohon kanan
  pushMatrix();
  translate(730, 150);
  drawTreeTrunk(0, 0);
  drawLeavesAnimated(0, 0);
  popMatrix();
  
  // Semak
  drawBush(170, 370);
  drawBush(670, 370);

  drawFence();
  
  
}

// POHON

void drawTreeTrunk(float x, float y) {
  stroke(#5C2F12);
  strokeWeight(8);
  line(x + 12, y + 40, x + 12, y + 240);
  line(x + 12, y + 110, x - 20, y + 60); 
  line(x + 12, y + 90, x + 30, y + 50); 
  line(x + 12, y + 60, x, y + 20); 
  line(x + 12, y + 60, x + 28, y + 10); 
  noStroke();
}

void drawLeavesAnimated(float x, float y) {
  float sway = sin(leafAngle) * 5;

  pushMatrix();
  translate(x + 12, y);
  rotate(radians(sway));

  // Daun-daun
  fill(#6DCB42);
  ellipse(0, 0, 90, 70);
  ellipse(-22, 30, 80, 60);
  ellipse(23, 30, 70, 60);
  fill(#9BE565);
  ellipse(-12, 0, 60, 50);
  ellipse(16, -10, 60, 50);
  ellipse(-2, 35, 50, 40);
  fill(#A7D28D);
  ellipse(-27, 240, 50, 30);
  ellipse(-2, 235, 60, 35);
  ellipse(23, 240, 50, 30);

  popMatrix();
}

void drawFence() {
  fill(222, 184, 135);
  pushMatrix();
  translate(0, 365);
  for(int i = 0; i < 11; i++) {
    pushMatrix();
    translate(i * 25, 0);
    rect(0, 0, 8, 40);
    if(i < 10) {
      rect(8, 15, 17, 8);
    }
    popMatrix();
  }
  popMatrix();

  pushMatrix();
  translate(542, 365);
  for(int i = 0; i < 11; i++) {
    pushMatrix();
    translate(i * 25, 0);
    rect(0, 0, 8, 40);
    if(i < 10) {
      rect(8, 15, 17, 8);
    }
    popMatrix();
  }
  popMatrix();
}

void drawHouse() {
  fill(245, 222, 179);
  rect(-100, -70, 200, 140);

  fill(178, 34, 34);
  triangle(-120, -70, 0, -150, 120, -70);

  fill(139, 69, 19);
  rect(50, -130, 20, 40);
  fill(105, 105, 105);
  rect(45, -135, 30, 8);

  fill(160, 82, 45);
  rect(-20, -10, 40, 80);
  fill(255, 215, 0);
  ellipse(10, 30, 5, 5);

  fill(255, 255, 0);
  rect(-80, -40, 40, 40);
  fill(139, 69, 19);
  rect(-62, -40, 4, 40);
  rect(-80, -22, 40, 4);

  fill(255, 255, 0);
  rect(40, -40, 40, 40);
  fill(139, 69, 19);
  rect(58, -40, 4, 40);
  rect(40, -22, 40, 4);
}

void drawSun() {
  fill(255, 255, 0);
  ellipse(0, 0, 60, 60);
  stroke(255, 255, 0);
  strokeWeight(3);
  for(int i = 0; i < 8; i++) {
    pushMatrix();
    rotate(radians(i * 45));
    line(35, 0, 50, 0);
    popMatrix();
  }
  noStroke();
}

void drawBush(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(34, 139, 34);
  ellipse(-70, -20, 80, 80);
  ellipse(-30, -40, 90, 90);
  ellipse(10, -20, 80, 80);

  fill(124, 252, 0);
  ellipse(-40, 0, 80, 60);
  ellipse(0, 0, 90, 65);
  ellipse(40, 0, 70, 55);
  popMatrix();
}
