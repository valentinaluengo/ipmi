//https://youtu.be/BF1Ip0E_NPE
PImage circulos;
boolean fondoOscuro = false; // true = fondo negro, lineas blancas
boolean mouseMovidoUnaVez = false; // para saber si el mouse se movió 

void setup() {
  size (800, 400);
  circulos = loadImage ("circulos.jpg");
  background(255); 
}
void draw() {
  
  // detecta movimiento del mouse
  if (mouseX > pmouseX) {
    fondoOscuro = true; // se mueve a la drc
  } else if (mouseX < pmouseX) {
    fondoOscuro = false; // se mueve a la izq
  }

  // ajusto los colores según la dirección que detectada
  if (fondoOscuro) {
    stroke(255); // líneas blancas
    fill(0);     // fondo del circulo negro 
  } else {
    stroke(0);   // líneas negras
    fill(255);   // fondo del circulo blanco 
  }
  
  
 keyPressed();
 
drawmyCircles();
image (circulos, 0, 0, 400, 400);   

  }
  
  void mousePressed() {
  reiniciar();
}

void reiniciar() {
  fondoOscuro = false;
  mouseMovidoUnaVez = false;
  background(255);
  drawmyCircles();
}
// función para detectar el movimiento del mouse.
void mouseMoved() {
  mouseMovidoUnaVez = true; // Establece la bandera en 'true' tan pronto como el mouse se mueve
}


//los circulos cambian por colores determinados 
void keyPressed() {
  //la tecla puede ser minuscula o mayuscula 
  if ((keyPressed ==false) && (key == 'g'|| key == 'G')) {
    mouseMovidoUnaVez = false;
    fill(0,255,0);
    strokeWeight(2);
   }else if ((keyPressed ==false) && (key == 'b'|| key == 'B')){
     mouseMovidoUnaVez = false;
     fill(0,0,255);
    strokeWeight(2);
  }else if ((keyPressed ==false) && (key == 'r'|| key == 'R')){
    mouseMovidoUnaVez = false;
    fill(255,0,0);
    strokeWeight(2);
  }else if ((keyPressed ==false) && (key == 'y'|| key == 'Y')){
    mouseMovidoUnaVez = false;
    fill(252,252,3);
    strokeWeight(2);
  }else if ((keyPressed ==false) && (key == 'v'|| key == 'V')){
    mouseMovidoUnaVez = false;
    reiniciar();
    strokeWeight(2);
  } 
  
}  

//funcion que crea todos los circulos de la imagen 
void drawmyCircles() { 
  myCircle(650,200,750,50,10); //circulo fondo
  myCircle(730,260,140,12,2); //circulo mediano-chico centro drc
  myCircle(675,135,240,25,4);  //circulo mediano-grande arriba drc
  myCircle(670,375,190,15,3); // circulo mediano-grande abajo drc
  myCircle(510,260,320,30,6); //circulo mediano-grande centro izq
  myCircle(470,70,170,15,3); //circulo mediano arriba izq
  myCircle(570,55,95,8,2); //circulo chico arriba izq
 
 if (mouseMovidoUnaVez) {
    rellenoDegradePot();
  }else {
    myCircle(620,200,290,26,6); //primer circulo
  }
}
 
void myCircle(int x, int y, int talle, int paso, int trazo) {
 for (int i= talle; i > 0; i -= paso) {
  strokeWeight(trazo);
  
  if (dist(mouseX, mouseY, x, y) < i / 2) {
      i += 5; // aumenta el tamaño si el mouse está sobre el círculo
    } 
  
  ellipse(x, y, i, i);
 }
}

void rellenoDegradePot() {  
  // Establesco el centro y el tamaño del circulo principal
  int posX = (width / 2) + 220; // desplazo el centro del eje X para que concuerde con la imagen
  int posY = height / 2; 
  int radio = 145; 
  
  fill(255);
  ellipse(posX, posY, 290, 290);  
  for (int y = posY - radio; y <= posY + radio; y += 10) {
    for (int x = posX - radio; x <= posX + radio; x += 10) {
      // Solo dibuja si el punto está dentro del círculo
      float d = dist(x, y, posX, posY);
      if (d <= radio) {
        fill((x + y) * 0.25); // Degradado suave
        ellipse(x, y, 6, 6); // Dibuja los puntos dentro del circulo 
      }
    }
  }
}
