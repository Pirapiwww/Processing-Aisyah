void tanganAisyahKiri(float x, float y, color kulit, color rambut, color baju, color lengan, color rok, color sepatu, int t) {
  noStroke();
  drawHairAisyahKiri(x, y - 90, rambut);

  // kaki
  drawLeftLegs(x - 105, y + 180, kulit, sepatu); 
  drawLeftLegs(x - 95, y + 200, kulit, sepatu); 

  SkirtDudukKiri(x, y + 160, rok); 
  
  // ------------------ TANGAN 1 -------------------
  pushMatrix();
  noStroke();
  translate(x + 10, y + 40); // Titik bahu kanan Aisyah
  
  float osilasi1 = sin(TWO_PI * t / 30.0);
  float naik1 = max(0, osilasi1);
  
  float sudutMin1 = -radians(270); // jam 9
  float sudutMax1= -radians(220); // jam 11
  float sudut1 = sudutMax1 - (sudutMax1 - sudutMin1) * naik1;
  
  float skalaTangan1 = map(naik1, 0, 1, 0.3, 1.0);
  
  rotate(sudut1);
  scale(1, skalaTangan1);
  drawRightArmAisyah(0, 0, lengan, kulit);
  popMatrix();


  drawBodyAisyahKiri(x, y + 170, baju); 
  kursiKiri(x - 65, y + 235);
  
  drawNeck(x + 15, y + 10, kulit);
  drawHeadAisyahKiri(x, y - 50, kulit);
  drawFaceAisyahKiri(x, y - 50);
  
  // ------------------ TANGAN 2 -------------------
pushMatrix();
noStroke();
translate(x + 10, y + 40); // Titik bahu kanan Aisyah

int offset = 100; // offset waktu agar tangan kedua selang seling
float osilasi2 = sin(TWO_PI * (t + offset) / 30.0);
float naik2 = max(0, osilasi2);

float sudutMin = -radians(270); // jam 9
float sudutMax = -radians(220); // jam 11
float sudut2 = sudutMax - (sudutMax - sudutMin) * naik2;

float skalaTangan2 = map(naik2, 0, 1, 0.3, 1.0);

rotate(sudut2);
scale(1, skalaTangan2);
drawRightArmAisyah(0, 0, lengan, kulit);
popMatrix();



}
