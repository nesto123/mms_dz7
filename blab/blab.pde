import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



AudioPlayer file;
String audioName;
String path;



String displayed, trazeni_stih="", mms, sss, xxs; //s oznacava da je string
int index = 0, suma = 0, br=0, textSize=45, trazeni_it=0, score=0, sizeincrese = 30;
;
int[] tocni={};
int brojputa;

//treba ga randomizirat u setup-u //ako je =5 to je 6 linija u .lrc/.txt
int NE_ZABORAVI_GA=3;

boolean value=true, zastavica_za_pauzu=true, menu=true, rect1=false, rect2=false, rect3=false, rect4=false,rect5=false, rect6=false, rect7=false, rect8=false,rect9= false, rect10=false;


int mm=0; //mm je minuta, ss je sekunda
float ss=0.0;
String[] stihovi, p, q;
int r=-1;

int interval; // =2000 //2s
int time;

PFont font;
Minim minim;

void setup() {

  size(1700, 400); 
  font = createFont("lemonyellowsun.otf", textSize);
  background(0);


  textFont(font, textSize);
  fill(255);
  minim = new Minim(this);
}

void draw() {
  textFont(font, textSize);
  if (!value) {
       
    background(0);

    update();
    fill(0);
    stroke(153);
    rect(100, 70, 250, 80);

    fill(255);
    text("Menu", 150, 128);
    text("Vas rezulutat je : "+ score, width/2 , height/2);
    rect5=overRect(100, 70, 250, 80);

    if(rect5) {
     fill(0);
     stroke(153);
     rect(100-sizeincrese/2, 70-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
     fill(0);
     noStroke();
     rect(100, 285, 250, 0);
     fill(255);
     text("Menu", 150, 128);
     }
  } else if (menu) {

      background(0);
    update();
    fill(0);
    stroke(153);
    
    //rect(100, 70, 250, 80);

    rect(100, 285, 250, 80);

    rect(400, 285, 255, 80);

    rect(700, 285, 250, 80);

    rect(1000, 285, 255, 80);
//aded
    rect(1300, 285, 255, 80);
    
    rect(1300, 160, 255, 80);
        rect(1000, 160, 255, 80);
    rect(700, 160, 255, 80);
    rect(400, 160, 255, 80);


//
    textFont(font, textSize);
    fill(255);
    text("Izaberi:", 150, 128);
    text("Adele", 150, 340);
    text("Elvis Preasly", 430, 340);    
    text("Sia", 750, 340);    
    text("Ed Sheeran", 1050, 340);
//aded
text("Shawn Mendes", 1320, 340);
text("RHCP", 1360, 215);
text("MJ", 1060, 215);
text("Queen", 760, 215);
text("Weekend", 460, 215);

//
    rect1=overRect(100, 285, 250, 80); 
    if (rect1) {
      fill(0);
      stroke(153);
      rect(100-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
      text("Adele", 150, 340);
    }

    rect2=overRect(400, 285, 255, 80); 
    if (rect2) {
      fill(0);
      stroke(153);
      rect(400-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
      text("Elvis Preasly", 430, 340);
    }
    rect5=!rect5;
    rect3=overRect(700, 285, 250, 80); 
    if (rect3) {
      fill(0);
      stroke(153);
      rect(700-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
      text("Sia", 750, 340);
    }

    rect4=overRect(1000, 285, 255, 80); 
    if (rect4) {
      fill(0);
      stroke(153);
      rect(1000-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
      text("Ed Sheeran", 1050, 340);
    }
    rect6=overRect(1300, 285, 255, 80); 
    if (rect6) {
      fill(0);
      stroke(153);
      //edited
      rect(1300-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("Shawn Mendes", 1320, 340);
    }
    rect7=overRect(1300, 160, 255, 80); 
    if (rect7) {
      fill(0);
      stroke(153);
      //edited
      rect(1300-sizeincrese/2, 160-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("RHCP", 1360, 215);
    }
        rect8=overRect(1000, 160, 255, 80); 
    if (rect8) {
      fill(0);
      stroke(153);
      //edited
      rect(1000-sizeincrese/2, 160-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("MJ", 1060, 215);
    }
        rect9=overRect(760, 160, 255, 80); 
    if (rect9) {
      fill(0);
      stroke(153);
      //edited
      rect(700-sizeincrese/2, 160-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("Queen", 760, 215);
    }
        rect10=overRect(460, 160, 255, 80); 
    if (rect10) {
      fill(0);
      stroke(153);
      //edited
      rect(400-sizeincrese/2, 160-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("Weekend", 460, 215);
    }
  } else {

    //ovdje je dosao do stiha koji treba pogodit
    if (br%NE_ZABORAVI_GA==0&&br>0) {

      if (file.isPlaying()) {
        file.pause();
        for (int c=0; c<displayed.length(); c++) {

          char slovo=displayed.charAt(c); 
          if ((slovo >= 'a' && slovo <= 'z') || (slovo >= 'A' && slovo <= 'Z')) {
            trazeni_stih += '_';
          } else trazeni_stih += slovo;
        }
      }

      if (value) {
        background(0);
        fill(255);
        text(trazeni_stih, width/2 - textWidth(trazeni_stih)/2, height/2);
        //println(displayed);
        //println(score);
         }
    } else {
      background(0);
      fill(255);

      text(displayed, width/2 - textWidth(displayed)/2, height/2);
        text("Trenutno: "+ score, 20 , 50);



      if (score>=0 && br==index+1) {
        /*background(0);
         fill(255);
         text(displayed, width/2 - textWidth(displayed)/2, height/2);
         */
        int odmak = 0, j=0;

        for (int i = 0; i < p.length; i++) {
          fill(255, 25, 25);
          if (j<tocni.length) {
            if (i == tocni[j]) { 
              fill(15, 255, 23);
              j++;
            }
          }

          text(p[i], width/2 - textWidth(displayed)/2 + odmak, height/2 + 50);
          odmak += textWidth(p[i]+" ");
        }
      }


      if (millis() - time > interval) {

        fill(255);

        if (score>0 && br==index+1) { 
          br++;
        }

        displayed = stihovi[++index].substring(10);
        br = index;

        if ( index+1 == stihovi.length) {
          value=false;
          //noLoop();
          background(0);
          text(displayed + ".š", width/2 - textWidth(displayed)/2, height/2);
        } else {
          mms = stihovi[index+1].substring(1, 3); 
          sss = stihovi[index+1].substring(4, 9);
          mm = parseInt(mms); 
          ss = parseFloat(sss); 
          //println(mms + " " +sss);


          suma += interval;
          interval = 60*mm*1000 + int(ss*1000) - suma; 
          //println("interval: "+interval);

          time  = millis();
        }
      }
    }
  }
}

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
  }  else if (rect8) {  
       k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      if (r==0) {   
        audioName = "Michael-Jackson-Smooth-Criminal.mp3";
        stihovi = loadStrings("Michael-Jackson-Smooth-Criminal.lrc");
        }
     else if (r==1) {
        audioName = "Michael-Jackson-Beat-It-via-Naijafinix.com_.mp3";
        stihovi = loadStrings("Michael-Jackson-Beat-It-via-Naijafinix.com_.lrc");

      } 
      else if (r==2) {

        audioName = "Michael Jackson - Billie Jean.mp3";
        stihovi = loadStrings("Michael Jackson - Billie Jean.lrc");
      }
  }
  else if (rect9) {  
       k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      if (r==0) {   
        audioName = "Queen - We will rock you.mp3";
        stihovi = loadStrings("Queen - We will rock you.lrc");
        }
     else if (r==1) {
        audioName = "Queen_-_I_Want_To_Break_Free_Single_Version_Qoret.com.mp3";
        stihovi = loadStrings("Queen_-_I_Want_To_Break_Free_Single_Version_Qoret.com.lrc");

      } 
      else if (r==2) {

        audioName = "Queen-Bohemian-Rhapsody.mp3";
        stihovi = loadStrings("Queen-Bohemian-Rhapsody.lrc");
      }
  }
    else if (rect10) {  
       k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      if (r==0) {   
        audioName = "The_Weeknd_-_Blinding_Lights.mp3";
        stihovi = loadStrings("The_Weeknd_-_Blinding_Lights.lrc");
        }
     else if (r==1) {
        audioName = "TheWeeknd-Starboyofficialft.DaftPunk-arabsongtop.mp3";
        stihovi = loadStrings("TheWeeknd-Starboyofficialft.DaftPunk-arabsongtop.lrc");

      } 
      else if (r==2) {

        audioName = "The-Weeknd-The-Hills.mp3";
        stihovi = loadStrings("The-Weeknd-The-Hills.lrc");
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

void keyPressed() {
  //println(key);
  if (key == ' ' || key == ENTER ) return;
  if (key == BACKSPACE || key == DELETE) {
    if (trazeni_it == 0) return;

    char slovo = trazeni_stih.charAt(--trazeni_it);

    if ((slovo >= 'a' && slovo <= 'z') || (slovo >= 'A' && slovo <= 'Z')) {
      if (trazeni_it == 0) trazeni_stih = '_' + trazeni_stih.substring(1); 
      else trazeni_stih = trazeni_stih.substring(0, trazeni_it) + '_' + trazeni_stih.substring(trazeni_it+1);
    }
  } else if (trazeni_it < trazeni_stih.length()) {
    char slovo = trazeni_stih.charAt(trazeni_it);
    while ( ! (slovo=='_')) {
      trazeni_it++;
      slovo = trazeni_stih.charAt(trazeni_it);
    }
    if (trazeni_it == trazeni_stih.length()) return;
    trazeni_stih = trazeni_stih.substring(0, trazeni_it++) + key + trazeni_stih.substring(trazeni_it);



    //if (trazeni_stih.charAt(trazeni_it) == ' ' || trazeni_stih.charAt(trazeni_it) == ',' || trazeni_stih.charAt(trazeni_it) == '\'') trazeni_it++;
    //trazeni_stih = trazeni_stih.substring(0,trazeni_it++) + key + trazeni_stih.substring(trazeni_it);
  }
}

void score() {
  p = splitTokens(displayed.toLowerCase(), " ");
  q = splitTokens(trazeni_stih.toLowerCase(), " ");

  for (int i=0; i < p.length; i++) {
    if ( p[i].equals(q[i]) ) {
      score += 100;
      tocni = append(tocni, i);
    }
  }
  println(score);
}

boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void update() {
  noFill();
  stroke(0);
  rect(100-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
  rect(400-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
  rect(700-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
  rect(1000-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
  rect1 = rect2 = rect3 = rect4 = false;
}
