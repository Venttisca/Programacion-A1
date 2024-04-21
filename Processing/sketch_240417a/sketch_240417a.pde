size(1000,1000);
background(#110025);
stroke(#E0E0E0);
int separacion1 = 100;
int separacion2 = separacion1/2;
int iteracionBarr = 1000/(separacion1);

for (int i = 0; i < iteracionBarr; i++) {
  rect(separacion1 * i,0,separacion2,1000);
}
