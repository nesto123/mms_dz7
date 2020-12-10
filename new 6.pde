void mouseClicked() {
  if (menu) {
   int k;
    if (rect1) {  
      
       k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      if (r==0) { 
        audioName = "adele-rolling-in-the-deep.mp3";
        stihovi = loadStrings("Adele-Rolling-in-the-Deep_simple.lrc");
      } else if (r==1) {

        audioName = "Hello.mp3";
        stihovi = loadStrings("Adele - Hello.lrc");
      } else if (r==2) {

        audioName = "When We Were Young.mp3";
        stihovi = loadStrings("Adele - When We Were Young.lrc");
      }
    } else if (rect2) {
      k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      if (r==0) { 
     
      audioName = "Elvis Presley All Shook Up.mp3";
      stihovi = loadStrings("Elvis Presley - All Shook up.txt");
      }else if (r==1) {

        audioName = "Elvis Presley - Can't Help Falling In Love (Audio).mp3";
        stihovi = loadStrings("Elvis Presley - Can't Help Falling in Love.lrc");
      } else if (r==2) {

        audioName = "Elvis Presley - Jailhouse Rock (Audio).mp3";
        stihovi = loadStrings("Elvis Presley - Jailhouse Rock.lrc");
      }
    
    } else if (rect3){   
    
   k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k; 
      if (r==0) {               
      audioName = "Sia - Cheap Thrills Ft. Sean Paul [Lyrics].mp3";
      stihovi = loadStrings("Cheap Thrills (feat. Sean Paul).lrc");}
      else if (r==1) {

        audioName = "Sia - Never Give Up (Lyrics).mp3";
        stihovi = loadStrings("Sia - Never Give Up.lrc");
      }  
      else if (r==2) {

        audioName = "Chandelier - Sia (lyrics).mp3";
        stihovi = loadStrings("Sia - Chandelier.lrc");
      }
    } else if (rect4) {  
       k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      if (r==0) {   
      audioName = "Photograph-Ed Sheeran (Audio).mp3";
      stihovi = loadStrings("Ed Sheeran - Photograph.mp3 by Ed Sheeran.lrc");}
     else if (r==1) {

        audioName = "Ed Sheeran - Galway Girl (Audio).mp3";
        stihovi = loadStrings("ed-sheeran-galway-girl.lrc");
      } 
      else if (r==2) {

        audioName = "Ed Sheeran - Perfect [Official Lyric Video].mp3";
        stihovi = loadStrings("Ed Sheeran - Perfect.lrc");
      }

  }else if (rect6) {  
       k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      if (r==0) {   
      audioName = "Shawn Mendes - Wonder.mp3";
      stihovi = loadStrings("Shawn Mendes - Wonder.lrc");}
     else if (r==1) {

        audioName = "Shawn Mendes, Camila Cabello - Señorita.mp3";
        stihovi = loadStrings("Shawn Mendes, Camila Cabello - Señorita.lrc");
      } 
      else if (r==2) {

        audioName = "Shawn Mendes- Monster (Lyric Video).mp3";
        stihovi = loadStrings("Shawn Mendes- Monster (Lyric Video).lrc");
      }
  }else if (rect7) {  
       k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      if (r==0) {   
        audioName = "01. By The Way.mp3";
        stihovi = loadStrings("01. By The Way.lrc");
        }
     else if (r==1) {
      audioName = "Red-Hot-Chili-Peppers-Californication.mp3";
      stihovi = loadStrings("Red-Hot-Chili-Peppers-Californication.lrc");

      } 
      else if (r==2) {

        audioName = "Snow(heyoh).mp3";
        stihovi = loadStrings("Snow(heyoh).lrc");
      }
  }  
    }else if (rect8) {  
       k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      if (r==0) {   
        audioName = "Michael-Jackson-Smooth-Criminal.mp3";
        stihovi = loadStrings("Michael-Jackson-Smooth-Criminal.lrc");
        }
     else if (r==1) {
      audioName = "Michael-Jackson-Smooth-Criminal.mp3";
      stihovi = loadStrings("Michael-Jackson-Smooth-Criminal.lrc");

      } 
      else if (r==2) {

        audioName = "Michael-Jackson-Smooth-Criminal.mp3";
        stihovi = loadStrings("Michael-Jackson-Smooth-Criminal.lrc");
      }
  }  
if(rect1||rect2||rect3||rect4||rect6||rect7||rect8||rect9||rect10){
    file =  minim.loadFile(audioName);
    file.loop();
    background(0);
    displayed = stihovi[index].substring(10); 
    mms = stihovi[index+1].substring(1, 3); 
    sss = stihovi[index+1].substring(4, 9); 
    mm = parseInt(mms);
    ss = parseFloat(sss);
    interval = int(ss*1000); 

    textFont(font, 25);
    fill(255);

    time = millis();
    menu=false;
    file.play();
  
}
  }else if(!value){
  
  if(rect5){
    value=true;
    menu=true;
    file.close();
    index=0;
    update();/*
    rect1=false;
    rect2=false;
    rect3=false;
    rect4=false;*/
    index = 0;suma = 0; br=0; trazeni_it=0; 
    brojputa=0;
    displayed = stihovi[index].substring(10); 
    mms = stihovi[index+1].substring(1, 3); 
    sss = stihovi[index+1].substring(4, 9); 
    mm = parseInt(mms);
    ss = parseFloat(sss);
    interval = int(ss*1000); 
    br=0;
}
  
  }
  
  else {
    if (br%NE_ZABORAVI_GA==0&&br>0) {
      /*if ( brojputa==1) {
        value=false;
      }*/
      brojputa++;
      br++;
    

      NE_ZABORAVI_GA=7;

      time = millis();
      tocni=new int[0];

      score();
      trazeni_stih="";
      trazeni_it=0;
   file.play();
   
  }
  }
}