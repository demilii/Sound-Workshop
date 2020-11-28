import processing.sound.*;
SinOsc sine;

void setup() {
  size(640, 480);
  background(255);
  sine = new SinOsc(this);
}

void draw() {
  //A
  sine.freq(220);
  sine.play();
  delay(1000);
  //B
  sine.freq(246.94);
  sine.play();
  delay(1000); 
  //C#
  sine.freq(277.18);
  sine.play();
  delay(1000); 
  //E
  sine.freq(329.63);
  sine.play();
  delay(1000); 
  //F#
  sine.freq(369.99);
  sine.play();
  delay(1000); 
  //A
  sine.freq(440.00);
  sine.play();
  delay(1000);
}
