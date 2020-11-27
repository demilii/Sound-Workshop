import processing.sound.*;

SinOsc sine;

void setup(){
  size(640,480);
  background(255);
  sine = new SinOsc(this);
  sine.freq(220);
  sine.play();
}
void draw(){
}
