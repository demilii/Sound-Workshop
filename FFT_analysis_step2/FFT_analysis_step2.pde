import processing.sound.*;

SinOsc sine;
FFT fft;
// Define how many FFT bands to use (this needs to be a power of two)
int bands = 1024;
float[] sum = new float[bands];

void setup() {
  size(640, 480);
  background(255);
  sine = new SinOsc(this);
  sine.freq(220);
  sine.play();
  fft = new FFT(this, bands);
  fft.input(sine);
}
void draw() {
  background(255);
  fft.analyze();
  for (int i= 0; i<bands; i++) {
    sum[i] += fft.spectrum[i]-sum[i];
    rect(i*width/bands, height, width/bands, -sum[i]*height);
  }
}
