void mouseReleased() {
  if (mode==INTRO) {
    cintro();
  } else if (mode==GAME) {
    cgame();
  } else if (mode==PAUSE) {
    cpause();
  } else if (mode==GAMEOVER) {
    cgameover();
  }
}
void keyReleased() {
  if (mode==GAME) {
    if (key=='a'||key=='A') {

      if (rnm == rc) {
          score=score+1;
          ss.play();
          ss.rewind();
          rnm=(int) random(0, 7);
          rc=(int) random(0, 7);
          eq=(float) random(0, 1);
          tm=100;
          if (eq>0.5) {
            rnm=rc;
          } else {
            if (eq<=0.5) {
              rnm=rc+1;
            } else if (rnm!=rc) {
              sf.play();
              sf.rewind();
              mode=GAMEOVER;
            }
          }
        
      }
    }


    if (key=='d'||key=='D') {
      if (rnm!=rc) {
          score=score+1;
          ss.play();
          ss.rewind();
          rnm=(int) random(0, 7);
          rc=(int) random(0, 7);
          eq=(float) random(0, 1);
          tm=100;

          if (eq>0.5) {
            rnm=rc;
          } else {
            if (eq<=0.5) {
              rnm=rc+1;
            }else {
            if (rnm==rc){ 
            sf.play();
            sf.rewind();
            mode=GAMEOVER;
          }
        }
      }
    
  }
}
}
}
