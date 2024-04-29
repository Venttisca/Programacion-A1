int anchoLienzo = 1000;
int altoLienzo = 750;
int limiteAncho;
int limiteAlto;
int sizeCircleX = 200;
int sizeCircleY = 100;
int contadorFramesX;
int contadorFramesY;
int incremento = 2;
int movimientoX;
int movimientoY;
boolean directionX;
boolean directionY;
int modo = 1;
int esperaAbajo,esperaDerecha;
int esperaAumento = int(random(0, 5 + 1));;
String status;


void setup(){
  size(1000,750);
  limiteAncho = anchoLienzo - (sizeCircleX/2);
  limiteAlto = altoLienzo - (sizeCircleY/2);
  int numeroAleatorioY = int(random(0, limiteAlto)); 
  int numeroAleatorioX = int(random(0, limiteAncho));
  stroke(#E0E0E0);
  fill(#E0E0E0);
  status = "no iniciado";
  esperaAbajo = 1;
  esperaDerecha = 1;
  contadorFramesY = numeroAleatorioY;
  contadorFramesX = numeroAleatorioX;

}

void draw(){
  background(#110025);
  movimientoX = contadorFramesX + (sizeCircleX/2);
  movimientoY = contadorFramesY + (sizeCircleY/2);
  //abajo derecha mov 1

  
  
  if(movimientoY<=0 + sizeCircleY/2){//Caso de chocar con el techo
    if (esperaDerecha > 0){
      modo = 3;//abajo izquiera 
      status = "Caso techo: modo 3 | Derecha negativo";
      esperaDerecha--;
      esperaAbajo--;
    }
    else {
      modo = 1;//abajo derecha
      status = "Caso techo: modo 1"; 
      esperaDerecha = esperaAumento;
      esperaAbajo--;
    }
  }
  if(movimientoX <= 0 + sizeCircleX/2){//chocar con pared interior
    if(esperaAbajo > 0){
      modo = 2;
      status = "Caso Interior: modo2 | Abajo negativo";
      esperaAbajo--;
      esperaDerecha--;
    }
    else {
      modo = 1;
      status = "Caso Interior: modo1";
      esperaAbajo = esperaAumento;
      esperaDerecha--;
    }
  }  
  if(movimientoY>=limiteAlto){//Caso de chocar con el suelo
    if(esperaDerecha > 0) {
      modo = 4;
      status = "Caso Suelo: modo 4 | Derecha negativo";
      esperaAbajo--;
      esperaDerecha--;
    }
    else{
      modo = 2;
      status = "Caso Suelo: modo 2";
      esperaDerecha += esperaAumento;
      esperaAbajo--;
    }
  }
  if(movimientoX >= limiteAncho){//Caso Chocar con pared Exterior
    if(esperaAbajo > 0){
      modo = 4;
      status = "Caso Exterior: modo 4 | Abajo negativo";
      esperaAbajo--;
      esperaDerecha--;
    }
    else{
      modo = 3;
      status = "Caso Exterior: modo 3";
      esperaAbajo += esperaAumento;
      esperaDerecha--;
    }
  }
      
      
  
  if(modo == 1) {//abajo, derecha
    contadorFramesX++;
    contadorFramesX += incremento;
    contadorFramesY++;
    contadorFramesY += incremento;
    ellipse(movimientoX,movimientoY,sizeCircleX, sizeCircleY);
    println("mov 1");
}
  else if(modo == 2) {//arriba, derecha
    contadorFramesX++;
    contadorFramesX += incremento;
    contadorFramesY--;
    contadorFramesY -= incremento;
    ellipse(movimientoX,movimientoY,sizeCircleX, sizeCircleY);
    println("mov 2");
  }
  else if(modo == 3) {//izquierda, abajo
       contadorFramesX--;
    contadorFramesX -= incremento;
    contadorFramesY++;
    contadorFramesY += incremento;
    ellipse(movimientoX,movimientoY,sizeCircleX, sizeCircleY);
    println("mov 3");
  }
  else if (modo == 4) {//izquierda, arriba
       contadorFramesX--;
    contadorFramesX -= incremento;
    contadorFramesY--;
    contadorFramesY -= incremento;
    ellipse(movimientoX,movimientoY,sizeCircleX, sizeCircleY);
    println("mov 4");
  }
  else {
  println("error: No se elige el modo");
  }
  
    
  println("modo " + modo);
  println("x " + movimientoX);
  println("y " + movimientoY);
  println("Espera Abajo " + esperaAbajo);
  println("Espera Derecha " + esperaDerecha);
  println("Status: " + status);
}
