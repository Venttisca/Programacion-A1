size(1000,1000);
background(#110025);
stroke(#E0E0E0);
int ancho = 100;
int iteraciones =1000/ancho;
int alto= 0;

for(int a =0; a<iteraciones; a++){
  alto = a*(ancho*2);
  for(int i = 0; i<iteraciones; i++){
    fill(#E0E0E0);
    square(alto, i*(ancho*2), ancho);
  
  }
}
for(int a =0; a<iteraciones; a++){
  alto = a*(ancho*2)+ancho;
  for(int i = 0; i<iteraciones; i++){
    fill(#E0E0E0);
    square(alto, i*(ancho*2)+ ancho, ancho);
  
  }
}
