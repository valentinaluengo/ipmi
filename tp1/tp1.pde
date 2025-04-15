PImage miObjetoFavorito;
void setup(){
  size( 800, 400 );
  background( 200 );
  miObjetoFavorito = loadImage("tocadorMkp.png");
}
void draw(){ 
  background( 210 );
  fill( 144, 94, 68 );
  rect( 300, 240+81, 500, 84 );
  fill( 103, 57, 33 );
  rect( 300, 240+70, 500, 10 );
  image( miObjetoFavorito, 0, 0, 300, 400 );
  strokeWeight( 1 );
  line ( 300, 0, 300, 400 );
  
  
  fill( 255 );
  rect( 420, 204, 280, 35 );
  rect( 420, 240, 70, 25 );
  rect( 420, 265, 70, 25 );
  rect( 420, 290, 70, 25 );
  rect( 420, 290+25, 70, 45 );
  rect( 630, 240, 70, 25 );
  rect( 630, 240+25, 70, 25 );
  rect( 630, 240+50, 70, 25 );
  rect( 630, 240+75, 70, 45 );
  rect( 430, 95, 258, 108 );
  rect( 490, 204, 140, 35 );
  quad( 490, 240, 510, 240, 510, 324, 490, 360 );
  quad( 609, 240, 609, 332, 630, 362, 630, 240 );
  rect( 510, 269, 99, 17 );
  
  fill( 206, 220, 232 );
  rect( 60+390, 115, 220, 70 );
  fill( 200 );
  ellipse( 49+391, 182, 10, 10 );
  ellipse( 49+391, 141, 10, 10 );
  ellipse( 49+391, 105, 10, 10 );
  ellipse( 89+391, 105, 10, 10 );
  ellipse( 140+391, 105, 10, 10 );
  ellipse( 190+391, 105, 10, 10 );
  ellipse( 244+391, 105, 10, 10 );
  ellipse( 287+391, 105, 10, 10 );
  ellipse( 288+391, 141, 10, 10 );
  ellipse( 288+391, 180, 10, 10 );
  fill( 0 );
  ellipse( 454, 337, 6, 6 );
  ellipse( 454, 303, 6, 6 );
  ellipse( 454, 277, 6, 6 );
  ellipse( 454, 253, 6, 6 );
  ellipse( 454, 220, 6, 6 );
  ellipse( 522, 220, 6, 6 );
  ellipse( 590, 220, 6, 6 );
  ellipse( 665, 220, 6, 6 );
  ellipse( 665, 253, 6, 6 );
  ellipse( 665, 278, 6, 6 );
  ellipse( 665, 302, 6, 6 );
  ellipse( 665, 339, 6, 6 );
   
}
