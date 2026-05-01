int cant=5;
boolean[][] cuadrilla=new boolean[cant][cant];
void setup() {
  size(800, 800);
}
void draw() {
  background(255);
  int tam=width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      int posY=i*tam;
      int posX=j*tam;
      if(cuadrilla[i][j]){
        fill(255, 0, 0);
      }else{
        fill(255);
      } 
      rect(posY, posX, tam, tam);
    }
  }
}
void mousePressed(){
  int tam=width/cant;
  int fila=mouseX/tam;
  int columna=mouseY/tam;
  cuadrilla[fila][columna]= !cuadrilla[fila][columna];;
}
