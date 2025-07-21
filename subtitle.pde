void subtitle(String teks) {
  // Posisi dan ukuran subtitle
  float padding = 20;
  float boxWidth = width - 2 * padding;
  float boxHeight = 60;
  float yPos = height - boxHeight - 20;

  // Gambar background semi-transparan
  fill(0, 150); // Hitam, alpha = 150 (semi-transparan)
  noStroke();
  rect(padding, yPos, boxWidth, boxHeight, 10);

  // Teks subtitle
  fill(255); // Putih
  textAlign(CENTER, CENTER);
  textSize(18);
  text(teks, width / 2, yPos + boxHeight / 2);
}

void subtitleDuaBaris(String baris1, String baris2) {
  // Posisi dan ukuran subtitle box
  float padding = 20;
  float boxWidth = width - 2 * padding;
  float boxHeight = 80; // agak tinggi karena dua baris
  float yPos = height - boxHeight - 20;

  // Gambar background semi-transparan
  fill(0, 150);
  noStroke();
  rect(padding, yPos, boxWidth, boxHeight, 10);

  // Teks subtitle
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(18);

  // Jarak antar baris
  float lineSpacing = 24;

  text(baris1, width / 2, yPos + boxHeight / 2 - lineSpacing / 2);
  text(baris2, width / 2, yPos + boxHeight / 2 + lineSpacing / 2);
}
