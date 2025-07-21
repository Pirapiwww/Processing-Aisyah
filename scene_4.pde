boolean baruMasukScene4 = true;

float xIbu = -50;

float[] posisiIbu = {100, 650};

//warna pakaian ibu
color dasterIbu = #f24bd6;
color lenganIbu = #f7abea;
color sepatuIbu = #74edd7;

boolean[] ibuSampai = new boolean[2]; // 2 titik untuk ibu

int stepS4 = 0;
boolean selesai4 = false;

int S4Narator = 0;
boolean S4latar2Dimulai = false;

boolean narator1Dimulai = false;
boolean narator2Dimulai = false;

void Scene4(){
  if (baruMasukScene4) {
    // Reset
    targetIndex = 0;
    xAisyah = -50;
    xIbu = -50;
    frameAwalDuduk = -1;
    baruMasukScene4 = false;
    
    selesai4 = false;
    stepS4 = 0;
    sedangPergi = true;
    sedangJalan = true;
    
    rewindSound(S4latar1);
    S4latar1.setGain(0); // Volume normal
    S4latar2Dimulai = false;
    
    stopSound(latar3);
  }
  bgScene4();
  
  // === PERGI KE KANAN ===
  if (sedangPergi) {
    // === PERGI KE RUANG MAKAN ===
    if (targetIndex < posisiIbu.length) {
      float targetX = posisiIbu[targetIndex];

      if (xIbu < targetX - 1) {
        // Jalan ke kanan
        sedangJalan = true;
        xIbu += kecepatan;
        xAisyah += kecepatan;

        if (targetIndex == 0) {
          pushMatrix();
          translate(xIbu, 260);
          scale(0.5);
          IbuJalanKanan(0, 0, kulit, rambut, lenganIbu, dasterIbu, sepatuIbu, frameCount);
          popMatrix();
          xAisyah = -450;
        } else if (targetIndex == 1) {
          
          pushMatrix();
          translate(xIbu, 260);
          scale(0.5);
          IbuJalanKanan(0, 0, kulit, rambut, lenganIbu, dasterIbu, sepatuIbu, frameCount);
          popMatrix();
          
          pushMatrix();
          translate(xAisyah, 260);
          scale(0.5);
          AisyahJalanKanan(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuIbu, frameCount);
          popMatrix();
        } 


      } else {
        sedangJalan = false;
        if (targetIndex == 0) {
          changeSound(S4Ibu1);
           
          if(S4Ibu1.isPlaying()){
            S4latar1.setGain(-10); 
            
            pushMatrix();
            translate(xIbu, 260);
            scale(0.5);
            drawIbuKanan(0, 0, kulit, rambut, lenganIbu, dasterIbu, sepatuIbu);
            popMatrix();
            subtitle("Ibu: Astagfirullah, Aisyah! Ini makanan semua belum habis? Kamu beli sebanyak ini tuh buat apa?");
            
            if (S4Ibu1.isPlaying() == false){
              targetIndex++;
              if (targetIndex < posisiIbu.length) {
                sedangPergi = true;
              } else {
                sedangPergi = false;
              }
            }
          }
          
        } else if (targetIndex == 1) {
          changeSound(S4Aisyah1);
          
          if (S4Aisyah1.isPlaying()) {
            
            // === Tahap 1 ===
            if (stepS4 == 0) {
              if (!S4Aisyah1.isPlaying()) {
                changeSound(S4Aisyah1);
              }
              
              S4latar1.setGain(-10); 

              diam();
              subtitle("Aisyah: Maaf, bu.... Tadi Aisyah lapar mata. Semuanya kelihatan enak");
        
              if (!S4Aisyah1.isPlaying()) {
                stepS4 = 1;
              }
        
            // === Tahap 2 ===
            } else if(stepS4 == 1){
              if (!S4Ibu2.isPlaying()) {
                changeSound(S4Ibu2);
              }
              
              S4latar1.setGain(-10);
              
              diam();
              subtitle("Ibu: Nak, kamu tahu nggak? Banyak orang di luar sana tuh susah makan");
        
              if (!S4Ibu2.isPlaying()) {
                stepS4 = 2;
              }
              
            } else if (stepS4 == 2){
              if (!S4Ibu3.isPlaying()) {
                changeSound(S4Ibu3);
              }
              
              S4latar1.setGain(-10);
              
              diam();
              subtitle("Ibu: Bahkan Ada yang harus puasa loh karena memang ngak punya apa-apa untuk dimakan");
        
              if (!S4Ibu3.isPlaying()) {
                stepS4 = 3;
              }
              
            } else if (stepS4 == 3){
              if (!S4Ibu4.isPlaying()) {
                changeSound(S4Ibu4);
              }
              
              S4latar1.setGain(-10);
              
              diam();
              subtitle("Ibu: Makanan itu bukan mainan. Kalau kamu beli lalu kamu ngak habiskan, itu namanya mubazir");
        
              if (!S4Ibu4.isPlaying()) {
                stepS4 = 4;
              }
              
            } else if (stepS4 == 4){
              if (!S4Aisyah2.isPlaying()) {
                changeSound(S4Aisyah2);
              }
              
              // ⬇️ Ganti latar
              if (!S4latar2Dimulai) {
                stopSound(S4latar1);
                rewindSound(S4latar2);
                S4latar2.setGain(0);
                S4latar2Dimulai = true;
              }
            
              if (S4latar2Dimulai) {
                S4latar2.setGain(-10);  // Turunkan latar saat dialog
              }
              
              diam();
              subtitle("Aisyah: ... Aisyah ngak sengaja, Bu ....");
        
              if (!S4Aisyah2.isPlaying()) {
                stepS4 = 5;
              }
              
            } else if (stepS4 == 5){
              if (!S4Ibu5.isPlaying()) {
                changeSound(S4Ibu5);
              }
              
              S4latar2.setGain(-10);
              
              diam();
              subtitleDuaBaris("Ibu: Tidak sengaja pun tetap harus tanggung jawab Aisyah.", " Allah itu paling tidak suka dengan orang yang berlebih-lebihan.");
        
              if (!S4Ibu5.isPlaying()) {
                stepS4 = 6;
              }
              
            } else if (stepS4 == 6){
              if (!S4Ibu6.isPlaying()) {
                changeSound(S4Ibu6);
              }
              
              S4latar2.setGain(-10);

              diam();
              subtitleDuaBaris("Ibu: Dan ingat yah Aisyah, dalam Al-Qur'an","Allah itu menyebut orang yang boros adalah saudara setan");
        
              if (!S4Ibu6.isPlaying()) {
                stepS4 = 7;
              }
              
            } else if (stepS4 == 7){
              if (!S4Ibu7.isPlaying()) {
                changeSound(S4Ibu7);
              }
              
              S4latar2.setGain(-10);
              
              diam();
              subtitleDuaBaris("Ibu: Kamu harus belajar lebih bijak lagi Nak."," Beli secukupnya, makan secukupnya, dan kalau bisa berbagi ke sesama");
        
              if (!S4Ibu7.isPlaying()) {
                stepS4 = 8;
              }
              
            } else if (stepS4 == 8){
              if (!S4Aisyah3.isPlaying()) {
                changeSound(S4Aisyah3);
              }
              
              S4latar2.setGain(-10);
              
              diam();
              subtitleDuaBaris("Aisyah: Iya, Bu... Aisyah janji nggak akan mubazir lagi.", " Aisyah akan membagikan makanan ini ke tetangga");
        
              if (!S4Aisyah3.isPlaying()) {
                stepS4 = 9;
              }
              
            } else if (stepS4 == 9){
              if (!S4Ibu8.isPlaying()) {
                changeSound(S4Ibu8);
              }
              
              S4latar2.setGain(-10);
              
              diam();
              subtitleDuaBaris("Ibu: Bagus Aisyah. Ibu tahu kok Nak, ", "kamu tuh bisa berubah menjadi anak yang lebih baik lagi");
        
              if (!S4Ibu8.isPlaying()) {
                stepS4  = 10;
                selesai4 = true;
                println(selesai4);
                sedangPergi = false;
              }
            }  
          }
        } 
      }
    }
  } else if (selesai4) {
    xIbu -= kecepatan;
    xAisyah -= kecepatan;
    rewindSound(S4latar2);
    S4latar2.setGain(0);
    changeSound(S4Narator1); 
  
    // Gambar animasi jalan ke kiri
    pushMatrix();
    translate(xIbu, 260);
    scale(0.5);
    IbuJalanKiri(0, 0, kulit, rambut, lenganIbu, dasterIbu, sepatuIbu, frameCount);
    popMatrix();
  
    pushMatrix();
    translate(xAisyah, 260);
    scale(0.5);
    AisyahJalanKiri(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah, frameCount);
    popMatrix();
    if (S4Narator1.isPlaying()) {
      // === Tahap 1 ===
      if (S4Narator == 0) {
        if (!S4Narator1.isPlaying()) {
          changeSound(S4Narator1);
        }
        
        S4latar2.setGain(-10);
        subtitle("Aisyah pun mulai menyadari bahwa makan secukupnya itu bagian dari ajaran Islam");      
  
        if (!S4Narator1.isPlaying()) {
          S4Narator = 1;
        }
  
      // === Tahap 2 ===
      } else if (S4Narator == 1){
        if (!S4Narator2.isPlaying()) {
          changeSound(S4Narator2);
        }
        
        S4latar2.setGain(-10);
        subtitle("Dan berbagi adalah cara terbaik untuk memperbaiki kesalahan");
  
        if (!S4Narator2.isPlaying()) {
          S4Narator = 2;
          currentScene = 5;
        }
      }
    }
  }
}


void diam() {
  pushMatrix();
  translate(xIbu, 260);
  scale(0.5);
  drawIbuKiri(0, 0, kulit, rambut, lenganIbu, dasterIbu, sepatuIbu);
  popMatrix();
  
  pushMatrix();
  translate(xAisyah, 260);
  scale(0.5);
  drawAisyahKanan(0, 0, kulit, rambut, bajuAisyah, lenganAisyah, rokAisyah, sepatuAisyah);
  popMatrix();
}

void bgScene4() {
  bgScene2_4();
  float turun = 60;
  drawEsPisangIjo(220, 260 + turun);
  drawPastel(270, 255 + turun);
  drawPuding(370, 260 + turun);
  drawNasiUduk(455, 270 + turun);
  drawBakso(540, 255 + turun);

}
