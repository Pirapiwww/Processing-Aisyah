// === Variabel Global untuk sceneBlock ===
PImage gambarBlok;
boolean mulaiBlok = false;
boolean blokSelesai = false;
float blokOpacity = 0;

int waktuTampil = 3000; // tampil gambar atau teks selama 3 detik
int waktuMulaiTampil = 0;
boolean sudahMulaiTampil = false;

PImage hasilRounded;
boolean gambarSudahDiproses = false;

// === Fungsi sceneBlock gambar (fade + tampil gambar) ===
void sceneBlockGambar(PImage gambar, float radius) {
  // Proses fade in ke hitam
  if (!blokSelesai) {
    if (blokOpacity < 255) {
      blokOpacity += 5;
    } else {
      blokOpacity = 255;
      blokSelesai = true;
      waktuMulaiTampil = millis();
      sudahMulaiTampil = true;
    }
  }

  // Layer hitam penuh
  fill(0, blokOpacity);
  noStroke();
  rect(0, 0, width, height);

  // Saat blok selesai dan sedang tampil
  if (blokSelesai && sudahMulaiTampil) {
    int waktuSekarang = millis();
    if (waktuSekarang - waktuMulaiTampil <= waktuTampil) {
      // Proses hanya sekali
      if (!gambarSudahDiproses) {
        hasilRounded = buatRoundedMask(gambar, radius);
        gambarSudahDiproses = true;
      }

      // Gambar hasil masking di tengah layar
      if (hasilRounded != null) {
        imageMode(CENTER);
        image(hasilRounded, width / 2, height / 2);
      }
    }
  }
}

// === Fungsi reset jika ingin pakai ulang ===
void resetSceneBlock() {
  blokOpacity = 0;
  blokSelesai = false;
  gambarSudahDiproses = false;
  sudahMulaiTampil = false;
  waktuMulaiTampil = 0;
}

PImage buatRoundedMask(PImage sumber, float radius) {
  PImage gambar = sumber.copy();
  gambar.resize(400, 300); // Bisa juga dibuat parameter kalau ingin fleksibel

  PImage mask = createImage(gambar.width, gambar.height, ALPHA);
  mask.loadPixels();

  for (int y = 0; y < gambar.height; y++) {
    for (int x = 0; x < gambar.width; x++) {
      boolean inCorner = 
        (x < radius && y < radius && dist(x, y, radius, radius) > radius) ||  // kiri atas
        (x > gambar.width - radius && y < radius && dist(x, y, gambar.width - radius, radius) > radius) ||  // kanan atas
        (x < radius && y > gambar.height - radius && dist(x, y, radius, gambar.height - radius) > radius) ||  // kiri bawah
        (x > gambar.width - radius && y > gambar.height - radius && dist(x, y, gambar.width - radius, gambar.height - radius) > radius); // kanan bawah

      mask.pixels[y * gambar.width + x] = inCorner ? color(0) : color(255);
    }
  }

  mask.updatePixels();

  PImage hasil = gambar.copy();
  hasil.mask(mask);
  return hasil;
}

void sceneBlockTeksTengah(String teks) {
  // Gambar latar hitam semi-transparan penuh layar
  fill(0, 200);
  noStroke();
  rect(0, 0, width, height);

  // Tampilkan teks putih di tengah
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(28);
  text(teks, width / 2, height / 2);
}
