float Px=0, Py=0;

void setup(){
  size (800,800);
}
void draw(){
  LineaContinua(mouseX, mouseY);
}
void LineaContinua(float MX, float MY){
  strokeWeight(VelMouse());
  if(mousePressed){
    line(MX, MY, Px, Py);
    line(MX+10, MY+10, Px+10, Py+10);
  }
  Px=MX;
  Py=MY;
}
Float VelMouse(){
  float dx=mouseX-Px;
  float dy=mouseY-Py;
  float Vel=sqrt(dx*dx + dy*dy);
  return Vel;
}
