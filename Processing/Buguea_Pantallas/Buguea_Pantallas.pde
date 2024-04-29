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

  
  
  if((movimientoX >= limiteAncho) || (movimientoY>=limiteAlto)||(movimientoX <= 0 + sizeCircleX/2)||(movimientoY <= 0 + sizeCircleY/2)){
    modo = int(random(1,5));
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
