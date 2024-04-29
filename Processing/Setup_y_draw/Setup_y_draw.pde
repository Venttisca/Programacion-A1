
int centroX;
int centroY;
int anchoLienzo = 1000;
int altoLienzo = 1000;
int contadorFrames = 0;

void setup() {
  size(1000,1000);
  centroX = anchoLienzo/2;
  centroY = altoLienzo/2;
  println("centro en " + centroX + " y " + centroY); // Usar comillas dobles para las cadenas
}

void draw() {
  background(#E0E0E0);
  println("frames " + contadorFrames); // Usar comillas dobles para las cadenas
  contadorFrames++;
  int posY = contadorFrames;
  
  line(0, posY, centroX, centroY);
}
