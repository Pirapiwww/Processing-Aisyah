// ====================== Variabel Global ======================
import ddf.minim.*;

Minim minim;
PImage gambarBlok6;

// ------------------- GANTI SCENE -----------------------
int currentScene = 1;  // default scene
// -------------------------------------------------------

float[] posisiKios = {200, 325, 450, 575}; // Titik-titik kios
float[] posisiMakanan = {200, 340, 430, 510};

int targetIndex = 0;
float xAisyah = -50;

float kecepatan = 2;

boolean sedangPergi = true;   // true = jalan kanan, false = jalan kiri
boolean sedangJalan = true;

boolean isPaused = true;
boolean showPlayButton = true;

// =============== AUDIO SCENE 1 ================
AudioPlayer pasar;
AudioPlayer naratorS1;
AudioPlayer S1Aisyah1;
AudioPlayer S1Aisyah2;
AudioPlayer S1Aisyah3;
AudioPlayer S1Aisyah4;
AudioPlayer S1Aisyah5;

// =============== AUDIO SCENE 2 ===============
AudioPlayer latar2;
AudioPlayer naratorS2;
AudioPlayer S2Aisyah1;
AudioPlayer S2Aisyah2;
AudioPlayer S2Aisyah3;

// =============== AUDIO SCENE 3 ===============
AudioPlayer latar3;
AudioPlayer S3Aisyah;
AudioPlayer S3Narator;

// =============== AUDIO SCENE 4 ===============
AudioPlayer S4latar1;
AudioPlayer S4latar2;
AudioPlayer S4Narator1;
AudioPlayer S4Narator2;
AudioPlayer S4Aisyah1;
AudioPlayer S4Aisyah2;
AudioPlayer S4Aisyah3;
AudioPlayer S4Ibu1;
AudioPlayer S4Ibu2;
AudioPlayer S4Ibu3;
AudioPlayer S4Ibu4;
AudioPlayer S4Ibu5;
AudioPlayer S4Ibu6;
AudioPlayer S4Ibu7;
AudioPlayer S4Ibu8;

// =============== AUDIO SCENE 5 ===============
AudioPlayer S56Latar;
AudioPlayer S5Aisyah1;
AudioPlayer S5Aisyah2;
AudioPlayer S5Tetangga;

// =============== AUDIO SCENE 6 ===============
AudioPlayer S6Narator1;
AudioPlayer S6Narator2;
AudioPlayer S6Aisyah;

// =============================================
void setup() {
  size(800, 500);
  frameRate(30);
  noStroke();
  
  setupScene1();
  InisiasiScene6();
  
  // ---------------- SOUND -------------------------------------------------------------------------
  minim = new Minim(this);  
  // -------- Inisialisasi Sound ---------
  
  // ============ AUDIO SCENE 1 ==============
  pasar = minim.loadFile("pasar.mp3"); 
  naratorS1 = minim.loadFile("naratorS1.mp3");
  S1Aisyah1 = minim.loadFile("S1Aisyah1.mp3");
  S1Aisyah2 = minim.loadFile("S1Aisyah2.mp3");
  S1Aisyah3 = minim.loadFile("S1Aisyah3.mp3");
  S1Aisyah4 = minim.loadFile("S1Aisyah4.mp3");
  S1Aisyah5 = minim.loadFile("S1Aisyah5.mp3");

  // ============ AUDIO SCENE 2 ==============
  latar2 = minim.loadFile("latar2.mp3");
  naratorS2 = minim.loadFile("naratorS2.mp3");
  S2Aisyah1 = minim.loadFile("S2Aisyah1.mp3");
  S2Aisyah2 = minim.loadFile("S2Aisyah2.mp3");
  S2Aisyah3 = minim.loadFile("S2Aisyah3.mp3");
  
  // ============ AUDIO SCENE 3 ==============
  latar3 = minim.loadFile("latar3.mp3");
  S3Aisyah = minim.loadFile("S3Aisyah.mp3");
  S3Narator = minim.loadFile("S3Narator.mp3");
  
  // ============ AUDIO SCENE 4 ==============
  S4latar1 = minim.loadFile("S4latar1.mp3");
  S4latar2 = minim.loadFile("S4latar2.mp3");
  S4Narator1 = minim.loadFile("S4Narator1.mp3");
  S4Narator2 = minim.loadFile("S4Narator2.mp3");
  S4Aisyah1 = minim.loadFile("S4Aisyah1.mp3");
  S4Aisyah2 = minim.loadFile("S4Aisyah2.mp3");
  S4Aisyah3 = minim.loadFile("S4Aisyah3.mp3");
  S4Ibu1 = minim.loadFile("S4Ibu1.mp3");
  S4Ibu2 = minim.loadFile("S4Ibu2.mp3");
  S4Ibu3 = minim.loadFile("S4Ibu3.mp3");
  S4Ibu4 = minim.loadFile("S4Ibu4.mp3");
  S4Ibu5 = minim.loadFile("S4Ibu5.mp3");
  S4Ibu6 = minim.loadFile("S4Ibu6.mp3");
  S4Ibu7 = minim.loadFile("S4Ibu7.mp3");
  S4Ibu8 = minim.loadFile("S4Ibu8.mp3");
  
  // ============ AUDIO SCENE 5 ==============
  S56Latar = minim.loadFile("S56Latar.mp3");
  S5Aisyah1 = minim.loadFile("S5Aisyah1.mp3");
  S5Aisyah2 = minim.loadFile("S5Aisyah2.mp3");
  S5Tetangga = minim.loadFile("S5Tetangga.mp3");
  
  // ============ AUDIO SCENE 5 ==============
  S6Narator1 = minim.loadFile("S6Narator1.mp3");
  S6Narator2 = minim.loadFile("S6Narator2.mp3");
  S6Aisyah = minim.loadFile("S6Aisyah.mp3");
  
  // ------------------------------------------
  gambarBlok6 = loadImage("surat.jpg");

  pasar.cue(30000);
}

void draw(){
  
  if (isPaused) {
    if (showPlayButton) {
      showPlayScreen(); // tampilkan layar awal pause dengan tombol play
    }
  } else {
    if (currentScene == 1){
      Scene1();
    } else if (currentScene == 2){
      Scene2();
    } else if (currentScene == 3){
      Scene3();
    } else if (currentScene == 4){
      Scene4();
    } else if (currentScene == 5){
      Scene5();
    } else if (currentScene == 6){
      Scene6();
    }
    
    t++;
    // Perbarui animasi daun
    leafAngle += 0.05;
    sunRotation += 0.005;
  }
}

// ---------- CHANGE SOUND --------------
void changeSound(AudioPlayer sound) {
  if (sound != null && !sound.isPlaying()) {
    sound.play();
  }
}

// ------------ STOP ALL SOUND ---------------

void stopSound(AudioPlayer sound) {
  if (sound.isPlaying()) {
    sound.pause();
  }
}

void rewindSound(AudioPlayer sound) {
  if (sound != null && !sound.isPlaying()) {
    sound.rewind();
    sound.play();
  }
}


void stopAllSound() {
  if (pasar.isPlaying()) {
    pasar.pause();
  } else if (latar2.isPlaying()){
    latar2.pause();
  } else if (naratorS1.isPlaying()){
    naratorS1.pause();
  }
}

void showPlayScreen() {
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("Klik untuk Memulai", width/2, height/2 - 50);
  
  // Tombol Play (opsional visual)
  fill(#0000ff);
  ellipse(width/2, height/2 + 50, 80, 80);
  fill(255);
  triangle(width/2 - 10, height/2 + 40, width/2 - 10, height/2 + 60, width/2 + 15, height/2 + 50);
}

void mousePressed() {
  if (isPaused) {
    // Aktifkan scene 1 setelah play ditekan
    isPaused = false;
    showPlayButton = false;
    currentScene = 1;
  }
}
