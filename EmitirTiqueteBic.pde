class EmitirTiqueteBic{
  private Tiquete t;
  EmitirTiqueteBic(String fecha){
      int id = int(random (100,1000));
      t = new Tiquete(id,fecha,"Bicicleta");
  }
  String imprimirTiquetes( ) {
    return t.emitirTiquete();
  }
  Tiquete getTiquete(){
    return t;
  }
}
