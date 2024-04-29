int centroX;
int centroY;
int anchoLienzo = 1000;
int altoLienzo = 1000;
int contadorFrames = 0;
int incremento = 10;
boolean crecimiento = true;
void setup() {
  size(1000,1000);
  println("centro en " + centroX + " y " + centroY); // Usar comillas dobles para las cadenas
}

void draw() {
  background(#110025);
  stroke(#E0E0E0);
  println("frames " + contadorFrames); // Usar comillas dobles para las cadenas
  contadorFrames++;
  int posY = contadorFrames % altoLienzo;
  int posX = contadorFrames % anchoLienzo;
  int radio = contadorFrames % altoLienzo;
  line(posX,0,mouseX, mouseY);
  contadorFrames += incremento;
  line(altoLienzo - posX, 0, mouseX, mouseY);
  
  line(0, posY, mouseX, mouseY);
  line(0, altoLienzo - posY, mouseX, mouseY);
  
  line (posX, altoLienzo, mouseX, mouseY);
  line(anchoLienzo - posX, altoLienzo, mouseX, mouseY);
  
  line(anchoLienzo, posY, mouseX, mouseY);
  line(anchoLienzo, altoLienzo-posY, mouseX,mouseY);
  
  if (radio > anchoLienzo){
  crecimiento = false;
}
  if (radio < 0){
    crecimiento = true;
  }
  
  if (crecimiento = true){
  circle(mouseX, mouseY, radio);
  
  
  }
  
  if(crecimiento = false) {
  circle(mouseX,mouseY, anchoLienzo-radio);
  }
  
}
