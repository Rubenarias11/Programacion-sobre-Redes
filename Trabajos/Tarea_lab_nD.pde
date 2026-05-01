int cant = 5;
boolean [][][] lab = new boolean[cant][cant][6];
void setup() {
  size(800, 800);
  for(int i=0; i<cant;i++){
    for(int j=0; j<cant; j++){
      for(int k=0; k<6; k++){
        lab[i][j][k] = random(1) > 0.5;
      }
    }
  }
}
void draw() {
  background(255);
  int tam=width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
        int posX=j*tam;
        int posY=i*tam;
        if (lab[i][j][0]) {
          line(posX, posY, posX+tam, posY);
        }
        if (lab[i][j][1]) {
          line(posX+tam, posY, posX+tam, posY+tam);
        }
        if (lab[i][j][2]) {
          line(posX, posY+tam, posX+tam, posY+tam);
        }
        if (lab[i][j][3]) {
          line(posX, posY, posX, posY+tam);
        }
        if (lab[i][j][4]) {
          line(posX, posY, posX+tam, posY+tam);
        }
        if (lab[i][j][5]) {
          line(posX, posY+tam, posX+tam, posY);
        }
      }
    }
  }
