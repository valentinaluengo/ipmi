int segundos;
int posX;
String gracias;
String titulo;
String caracters; 
String objetivo;        
//imagenes
PImage personajes; 
PImage grax;
PImage SubSur;
PImage carrera;
// texto
PFont fuenteNueva; 
float textoX;


void setup() {
  
  size (640, 480);
  background (0); 
  textSize (32);
  
  
  posX = 0;
  
  titulo = "Subway Surfers: \n un videojuego para \n dispositivos electronicos";
  
  caracters = "Puedes cambiar \n de personajes a medida \n que juntas monedas"; 
  
  objetivo = "Objetivo: Escapar del policia corriendo \n entre las vias del tren, \n y esquivando trenes \n en movimiento";
  
  gracias = "Gracias \n por ver";
  
  segundos = 450;
  
  SubSur = loadImage( "img1.jpg" );
  
  carrera = loadImage("img2.jpg"); 
  
  personajes = loadImage("img3.jpg"); 
  
  grax = loadImage("img4.jpg"); 
  
  println (segundos); 
  
  fuenteNueva = loadFont( "MFT.vlw");
  
  textFont (fuenteNueva); 
  

}

void draw () { 
  
  segundos = frameCount / 2; 
  
  println (segundos);
  
  background (242, 242, 242); 
  
  
 if (segundos<=185) { //PANTALLA UNO
  
  image (SubSur, 10, 10, 250, 450);
  
  fill (0); 
  
  text (titulo, 450 - segundos, 155, 450, 200); 
  
    } else if (segundos >185 && segundos <=327) { //PANTALLA DOS
  
    image (carrera, 10, 10, 250, 450);
  
  fill (0); 
  
  text (objetivo, 600 - segundos, 145, 450, 200); 

    }   else if (segundos >327 && segundos <=470) { //PANTALLA TRES 
    image (personajes, 10, 10, 250, 450);
  
  fill (0); 
  
  text (caracters, 750 - segundos, 160, 450, 200); 
  
    } else if (segundos >470 && segundos <=750) { //PANTALLA CUATRO 
    image (grax, 0, 0, 640, 480);
  
  fill (0); 
  textSize (60);
  text (gracias, 1000 - segundos, 200, 400, 200); 
  
    }
    
}
