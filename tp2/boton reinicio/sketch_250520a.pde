String reinicio;

void setup() { 

size (640, 480); 

background (0); 

textSize (20);

reinicio = "Reiniciar"; 

}

void draw () {
  fill (247, 197, 148);
  rect( 500, 400, 100, 50 );
  fill( 0 ); 
  text (reinicio, 515, 430);
  
}

void mousePressed () { 
  if ( mouseX > 500 && mouseX < 500+50 && mouseY > 400 && mouseY < 400+50 ); }
