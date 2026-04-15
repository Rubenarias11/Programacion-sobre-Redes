float tam=100;
void setup(){
  size(800, 600);
}

void draw(){
  if(mousePressed){
  cuadrado(mouseX, mouseY, tam, tam);
  }
}
void cuadrado(float x, float y, float w, float h){
  rectMode(RADIUS);
  rect(x, y, w, h);
  ellipse(x, y, w/2, h/2);
}
