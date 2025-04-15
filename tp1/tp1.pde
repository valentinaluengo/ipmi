PImage miObjetoFavorito;
void setup(){
  size( 800, 400 );
  background( 200 );
  miObjetoFavorito = loadImage("tocadorMkp.png");
}
void draw(){ 
  background( 200 );
  image( miObjetoFavorito, 0, 0, 300, 400 );
  strokeWeight( 1 );
  line ( 300, 0, 300, 400 );
  rect( 18+400, 160, 340, 80, 10 );
}
