class EmitirTiqueteMot{
  private Tiquete t;
  EmitirTiqueteMot(String fecha){
      int id = int(random (100,1000));
      t = new Tiquete(id,fecha,"Motocicleta");
  }
  String imprimirTiquetes( ) {
    return t.emitirTiquete();
  }
  Tiquete getTiquete(){
    return t;
  }
}
