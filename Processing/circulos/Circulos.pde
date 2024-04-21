size(1000,1000);
background(#110025);
stroke(#E0E0E0);
int cantidad= 10;
int tamanio=1000/cantidad;

color [] colors = {#110025,#E0E0E0};

for(int i =0;i<cantidad;i++){
 fill(colors [i % 2]);
 ellipse(500,500,1000-(i*tamanio), 1000-(i*tamanio));

 
  
}
