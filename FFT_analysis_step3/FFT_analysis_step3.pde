import processing.sound.*;
SinOsc[] sine;
FFT[] fft;
//how many sine waves
int num = 5;
// Define how many FFT bands to use (this needs to be a power of two)
int bands = 1024;
float[] sum = new float[bands];

void setup() {
  size(640, 480);
  background(255);
  sine = new SinOsc[num];
  fft = new FFT[num];
  for (int i=0; i<num; i++) {
    sine[i] = new SinOsc(this);
    sine[i].freq(440*(i+1));
    fft[i] = new FFT(this, bands);
    sine[i].play();
    fft[i].input(sine[i]);
  }
}

void draw() {
  background(255);
  for (int i=0; i<num-1; i++) {
    fft[i].analyze();
    for (int j=0; j<bands; j++) {
      sum[j] += fft[i].spectrum[j]-sum[j];
      rect(j*width/bands, height, width/bands, -sum[j]*height);
    }
  }
}
