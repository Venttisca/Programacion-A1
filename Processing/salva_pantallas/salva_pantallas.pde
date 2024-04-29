int anchoLienzo = 1000;
int altoLienzo = 750;
int limiteAncho;
int limiteAlto;
int sizeCircle = 200;
int contadorFramesX = 0;
int contadorFramesY = 0;
int incremento = 2;
int movimientoX;
int movimientoY;
boolean directionX;
boolean directionY;
int modo = 1;
int bloqueo;
int duration;
int bloqueo2;
String status;

void setup(){
  size(1000,750);
  limiteAncho = anchoLienzo - (sizeCircle/2);
  limiteAlto = altoLienzo - (sizeCircle/2);
  stroke(#110025);
  status = "no iniciado";

}

void draw(){
  background(#E0E0E0);
  movimientoX = contadorFramesX + (sizeCircle/2);
  movimientoY = contadorFramesY + (sizeCircle/2);
  int desbloqueado = bloqueo - (sizeCircle/2);
  int desbloqueado2 = bloqueo2 - (sizeCircle/2);
  //abajo derecha mov 1

  
  
  if (movimientoY > limiteAlto) {//1.2
    modo = 2;
        bloqueo = movimientoY;
    bloqueo2 = movimientoX;
    status= "1.2 De correcci[on";
  }  
  else if ((movimientoX >= limiteAncho)&&( movimientoY < limiteAlto)&&(movimientoY > 0)) {
    modo = 4;
    bloqueo = movimientoY;
    bloqueo2 = movimientoX;
    duration--;
    status = "4.4 Normal";
  }
  else if(((movimientoX < limiteAlto) && (movimientoY < limiteAncho))&&(desbloqueado <=0 && desbloqueado2 <=0)){
    modo = 1;//abajo, derecha
    duration--;
    status = "2.1 Normal";
  }

  else if ((((movimientoY >= limiteAlto)&&(desbloqueado <= 0)) || movimientoX - sizeCircle/2 <= 0)) {    
    modo = 2;//arriba, derecha
    println("limiteAlto " + limiteAlto);
    duration--;
    status = "3.2 Normal con correcci[on";
  }

  else if ((movimientoY - sizeCircle/2 <= 0)&& duration <=0)  {
    bloqueo = movimientoX;
    modo = 3;
    duration = 2;
    status = "5.3 Normal";

  }
    else if(movimientoY <= 0 + sizeCircle/2){
    modo = 1;//abajo, derecha
    duration--;
    status = "6.1 De correci[on";
  }  

  if(modo == 1) {//abajo, derecha
    contadorFramesX++;
    contadorFramesX += incremento;
    contadorFramesY++;
    contadorFramesY += incremento;
    ellipse(movimientoX,movimientoY,sizeCircle, sizeCircle);
    println("mov 1");
    bloqueo--;
    bloqueo -= incremento;
    bloqueo2--;
    bloqueo2 -= incremento;
    bloqueo--;
    bloqueo -= incremento;
    bloqueo2--;
    bloqueo2 -= incremento;

}
  else if(modo == 2) {//arriba, derecha
    contadorFramesX++;
    contadorFramesX += incremento;
    contadorFramesY--;
    contadorFramesY -= incremento;
    ellipse(movimientoX,movimientoY,sizeCircle, sizeCircle);
    println("mov 2");
  }
  else if(modo == 3) {//izquierda, abajo
       contadorFramesX--;
    contadorFramesX -= incremento;
    contadorFramesY++;
    contadorFramesY += incremento;
    ellipse(movimientoX,movimientoY,sizeCircle, sizeCircle);
    println("mov 3");
    bloqueo--;
    bloqueo -= incremento;
    bloqueo2--;
    bloqueo2 -= incremento;
  }
  else if (modo == 4) {//izquierda, arriba
       contadorFramesX--;
    contadorFramesX -= incremento;
    contadorFramesY--;
    contadorFramesY -= incremento;
    bloqueo--;
    bloqueo -= incremento;
    ellipse(movimientoX,movimientoY,sizeCircle, sizeCircle);
    println("mov 4");
  }
  else {
  println("error: No se elige el modo");
  }
  
    
  println("modo " + modo);
  println("x " + movimientoX);
  println("y " + movimientoY);
  println("bloqueo " + bloqueo);
  println("debloqueado" + desbloqueado);
  println("bloqueo2 " + bloqueo2);
  println("debloqueado2 " + desbloqueado2);
  println("duration " + duration);
  println("Status: " + status);
}
