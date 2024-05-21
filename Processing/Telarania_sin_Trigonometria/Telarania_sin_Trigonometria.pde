  int anchoLienzo = 500;
  int altoLienzo =1000;
  int centroX = anchoLienzo/2;
  int centroY = altoLienzo/2;
  int cantidad = 10;
  float pronunciar = .75;//incial
  float incremento = .1;
void setup(){
  size(500,1000);
  


}

void draw(){
  incremento+=.01;
  pronunciar = incremento %1;
  
  background(#110025);
  stroke(#E0E0E0);
  line(0,0,anchoLienzo,altoLienzo);
  line(anchoLienzo,0,0,altoLienzo);
  line(anchoLienzo/2,0,anchoLienzo/2,altoLienzo);
  line(0,altoLienzo/2,anchoLienzo, altoLienzo/2);
  int distanciaPuntosX = anchoLienzo/(cantidad);
  int distanciaPuntosY = altoLienzo/(cantidad);
  for(int i=1; i<cantidad; i++){
    //derecha
    line(centroX,centroY - distanciaPuntosY * i, centroX + (distanciaPuntosX * pronunciar)*i, centroY - (distanciaPuntosY * pronunciar)*i);
    line(centroX + (distanciaPuntosX * pronunciar)*i, centroY - (distanciaPuntosY * pronunciar)*i,centroX + distanciaPuntosX*i,centroY);
    line(centroX + distanciaPuntosX * i,centroY, centroX + (distanciaPuntosX * pronunciar)*i, centroY + (distanciaPuntosY * pronunciar)*i);
    line(centroX + (distanciaPuntosX * pronunciar)*i, centroY + (distanciaPuntosY * pronunciar)*i,centroX,centroY + distanciaPuntosY*i);
    //izquiera
    line(centroX,centroY - distanciaPuntosY * i, centroX - (distanciaPuntosX * pronunciar)*i, centroY - (distanciaPuntosY * pronunciar)*i);
    line(centroX - (distanciaPuntosX * pronunciar)*i, centroY - (distanciaPuntosY * pronunciar)*i,centroX - distanciaPuntosX*i,centroY);
    line(centroX - distanciaPuntosX * i,centroY, centroX - (distanciaPuntosX * pronunciar)*i, centroY + (distanciaPuntosY * pronunciar)*i);
    line(centroX - (distanciaPuntosX * pronunciar)*i, centroY + (distanciaPuntosY * pronunciar)*i,centroX,centroY + distanciaPuntosY*i);

    println("i " + i);
   
  }
}
  
