import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer ss,sm,sf;

int score;
int hs;
float eq;
int tm;

//mode Variables

int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

color red=#ffadad;
color orange=#ffd6a5;
color yellow=#fdffb6;
color green=#caffbf;
color blue=#a0c4ff;
color purple=#bdb2ff;
color pink=#ffc6ff;

String[] words={"Red", "orange", "yellow", "green", "blue", "purple", "pink"};
color [] colors={red, orange, yellow, green, blue, purple, pink};

void setup() {
  size(800, 600);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  score=0;
  hs=score;
  tm=100;
  minim =new Minim(this);
  sf= minim.loadFile("FAILURE.wav");
  sm= minim.loadFile("MUSIC.mp3");
  ss= minim.loadFile("SUCCESS.wav");
  sm.play();
}

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else {
    println("mode Error:Mode cannot be resolved");
  }
}
