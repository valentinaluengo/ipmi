//int segundos;
int posX;
//textos
String gracias;
String titulo;
String caracters; 
String objetivo;   
String reinicio;
//imagenes
PImage personajes; 
PImage grax;
PImage SubSur;
PImage carrera;
// fuente del texto
PFont fuenteNueva; 
float textoX;
//boton reinicio
int miFrameCount = 0;
int botonX = 500;
int botonY = 400;
int botonAncho = 110;
int botonAlto = 50;
boolean botonPresionado = false;

void setup() { 
  size (640, 480);
  background (0); 
  textSize (20);
  posX = 0;
  titulo = "Subway Surfers: \n un videojuego para \n dispositivos electronicos";
  caracters = "Puedes cambiar \n de personajes a medida \n que juntas monedas";  
  objetivo = "Objetivo: Escapar del policia corriendo \n entre las vias del tren, \n y esquivando trenes \n en movimiento";
  gracias = "Gracias \n por ver";
  reinicio = "Reiniciar"; 
  SubSur = loadImage( "img1.jpg" );
  carrera = loadImage("img2.jpg"); 
  personajes = loadImage("img3.jpg"); 
  grax = loadImage("img4.jpg"); 
  botonreinicio();
  fuenteNueva = loadFont( "MFT.vlw");
  textFont (fuenteNueva); 
  
}

void draw () { 
  background (242, 242, 242); 
  miFrameCount++;
  
if (miFrameCount<=185) { //PANTALLA UNO
    image (SubSur, 10, 10, 250, 450);
    fill (0); 
    text (titulo, 450 - miFrameCount, 155, 450, 200); 
  } else if (miFrameCount >185 && miFrameCount <=327) { //PANTALLA DOS  
          image (carrera, 10, 10, 250, 450);  
          fill (0);   
          text (objetivo, 600 - miFrameCount, 145, 450, 200); 
          } else if (miFrameCount >327 && miFrameCount <=470) { //PANTALLA TRES 
                 image (personajes, 10, 10, 250, 450);
                 fill (0); 
                 text (caracters, 750 - miFrameCount, 160, 450, 200); 
                 } else if (miFrameCount >470 && miFrameCount <=750) { //PANTALLA CUATRO 
                        image (grax, 0, 0, 640, 480);
                        fill (0); 
                        text (gracias, 1000 - miFrameCount, 200, 400, 200); 
                  }
                  
 botonreinicio();
}
void botonreinicio() {
  fill (247, 197, 148);
  rect( 500, 400, 110, 50 );
  fill( 0 ); 
  text (reinicio, 505, 430);
}

void mousePressed () { 
  if (mouseX > botonX && mouseX < botonX + botonAncho &&
      mouseY > botonY && mouseY < botonY + botonAlto) {
    botonPresionado = true;
    realizarAccion();
    miFrameCount = 0;
  }
}

void realizarAccion() {
  println("¡Botón presionado!");
}
