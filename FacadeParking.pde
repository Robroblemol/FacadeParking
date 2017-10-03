String date;
void setup() {
  size(250,200,JAVA2D);
  initGui();
  int d=day();
  int m=month();
  int y=year();
  date = "0"+d+""+m+""+y;
}
void draw( ) {
  background(213, 245, 213);
  stroke(0);
  strokeWeight(2);
}
