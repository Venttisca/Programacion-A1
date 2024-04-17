size(700,700);
background(#110025);
stroke(#E0E0E0);
int separacion = 10;
int NumDeIteraciones = 700/separacion;
for (int i = 0; i < NumDeIteraciones; i++){
 line(0,separacion *i,separacion * (i + 1), 700); 
 line(separacion *i,0, 700, separacion * (i + 1)); 
 line(700 - separacion * i, 0, 0, separacion * (i + 1));
 line(700, separacion * i, 700 - separacion * (i + 1), 700);

}
