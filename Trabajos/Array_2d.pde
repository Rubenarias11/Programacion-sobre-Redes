int cant = 20;
float[][] cuadrilla = new float[cant][cant];
void setup() {
  size(800, 800);
}
void draw() {
  float diagonal = sqrt(sq(width) + sq(height));
  float tam = width / cant;
  for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant; j++) {
      float posX = i * tam;
      float posY = j * tam;
      float distancia = dist(posX, posY, mouseX, mouseY);
      cuadrilla[i][j] = distancia;
      float valColor = int(map(cuadrilla[i][j], 0, diagonal/4, 255, 0));
      fill(valColor);
      rect(posX, posY, tam, tam);
    }
  }
}
