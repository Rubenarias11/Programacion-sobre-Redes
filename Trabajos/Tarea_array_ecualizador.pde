int cant=5;
float[] barra= new float[cant];
void setup(){
  size(800, 800);
  
}
void draw(){
  int ancho=width/cant;
  for (int i = 0; i < cant; i++){
  rect(i*ancho, height-barra[i], ancho, barra[i]);
  }
}
void mouseDragged(){
  int ancho=width/cant;
  
  int indice=mouseX/ancho;
  float altura=height-mouseY;
  barra[indice]=altura;
}
