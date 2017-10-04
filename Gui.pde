import g4p_controls.*;//importamos libreria

GWindow window;//ventanas
GButton bStart;
//GButton bAltura;//boton
GLabel lbTipeVehicule;//objeto tipo label
GToggleGroup togG1Options;
GOption grp1_a, grp1_b, grp1_c;
GCheckbox cbx;


void initGui( ) {
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Parking Facada");
  createControlGruop();

}
void createControlGruop( ) {

  bStart = new GButton(this,80,130,100,35,"Emitir Tiquete");
  bStart.fireAllEvents(true);//Habilitamos toda las clases dissparos
//  bAltura = new GButton(this, 80,165,100, 35,"Emitir Tiquete con altura");
//  bAltura.fireAllEvents(true);//Habilitamos toda las clases dissparos
   lbTipeVehicule = new GLabel(this, 43, 24, 159, 25);
   lbTipeVehicule.setText("Control Acceso Parking");

  togG1Options = new GToggleGroup();
  grp1_a = new GOption(this, 85, 50, 120, 20);
  grp1_a.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  grp1_a.setText("Automovil");
  grp1_a.setVisible(true);
  grp1_a.addEventHandler(this, "grp1_a_clicked1");
  grp1_b = new GOption(this, 85, 70, 120, 20);
  grp1_b.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  grp1_b.setText("Motocicleta");
  grp1_b.setVisible(true);
  grp1_b.addEventHandler(this, "grp1_b_clicked1");
  grp1_c = new GOption(this, 85, 90, 120, 20);
  grp1_c.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  grp1_c.setText("Bicicleta");
  grp1_c.setVisible(true);
  grp1_c.addEventHandler(this, "grp1_c_clicked1");
  togG1Options.addControl(grp1_a);
  grp1_a.setSelected(true);
  togG1Options.addControl(grp1_b);
  togG1Options.addControl(grp1_c);
    cbx=new GCheckbox(this,5,5,110,40,"Altura");




}
Tiquete t;
EmitirTiqueteCar eTC;
EmitirTiqueteMot eTM;
EmitirTiqueteBic eTB;
String item1,item3;
int id;
float altura;
AlturaDecorate d;
boolean flag_d = false;

public void grp1_a_clicked1(GOption option, GEvent event) {
    println("Me seleccionaron!! (Automovil)");
    eTC = new EmitirTiqueteCar(date);
    t=eTC.getTiquete();
    item1 = t.getFecha();
    id = t.getIdTiquete();
    item3 = t.getTipoVehiculo();
      d = new AlturaDecorate(t);
}
public void grp1_b_clicked1(GOption option, GEvent event) {
    println("Me seleccionaron!! (Motocicleta)");
    eTM = new EmitirTiqueteMot(date);
    t=eTM.getTiquete();
    item1 = t.getFecha();
    id = t.getIdTiquete();
    item3 = t.getTipoVehiculo();

}
public void grp1_c_clicked1(GOption option, GEvent event) {
    println("Me seleccionaron!! (Bicicleta)");
    eTB = new EmitirTiqueteBic(date);
    t=eTB.getTiquete();
    item1 = t.getFecha();
    id = t.getIdTiquete();
    item3 = t.getTipoVehiculo();

}
public void handleButtonEvents(GButton button, GEvent event) {
  if(button==bStart&&event==GEvent.PRESSED){
    println("Me presionaron!! ");
    if(flag_d == false){
      window = GWindow.getWindow(this,"Tiquete Emitido",0,0,120,160,JAVA2D);
      window.addDrawHandler(this, "drawWin");
      GLabel ldFechaT = new GLabel(window,0,10,110,25);
      GLabel ldIdT = new GLabel(window,0,20,110,25);
      GLabel ldTipoV = new GLabel(window,0,30,110,25);
      ldFechaT.setText("Fecha: "+item1);
      ldIdT.setText("ID: "+ id);
      ldTipoV.setText("TV: "+item3);
    }else{
      window = GWindow.getWindow(this,"Tiquete Emitido",0,0,120,160,JAVA2D);
      window.addDrawHandler(this, "drawWin");
      GLabel ldFechaT = new GLabel(window,0,10,110,25);
      GLabel ldIdT = new GLabel(window,0,20,110,25);
      GLabel ldTipoV = new GLabel(window,0,30,110,25);
      GLabel lbAltura = new GLabel(window,0,40,110,23);
      ldFechaT.setText("Fecha: "+item1);
      ldIdT.setText("ID: "+ id);
      ldTipoV.setText("TV: "+item3);
      lbAltura.setText("Altura: "+altura);
      flag_d=false;
        cbx.setSelected(false);
    }

  }
}

	public void drawWin(PApplet applet, GWinData windata) {

  }
/*void setDecorator( ) {
    d = new AlturaDecorate(t);
}*/
public void handleToggleControlEvents(GToggleControl option, GEvent event) {
  //  d = new AlturaDecorate(t);
  if(option==cbx){
    println("Seleccionada Checkbox 1");
    flag_d=true;
    altura=d.altura;
  }
 }
