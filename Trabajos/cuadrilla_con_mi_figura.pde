int cant = 5;
float tamaw;
float tamah;

void setup() {
  size(800, 600);
  tamaw = width / cant;
  tamah = height / cant;
}

void draw() {
  background(255);
  cuadrilla();
}
void figura(float x, float y, float w, float h) {
  rectMode(RADIUS);
  rect(x, y, w/2, h/2);
  ellipse(x, y, w/4, h/4);
}
void cuadrilla() {
  for (float i = 0; i < cant; i++) {
    for (float j = 0; j < cant; j++) {
      float x = i * tamaw + tamaw/2;
      float y = j * tamah + tamah/2;
      figura(x, y, tamaw, tamah);
    }
  }
}
