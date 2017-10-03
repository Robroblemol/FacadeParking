class EmitirTiqueteCar{
  private Tiquete t;
  EmitirTiqueteCar(String fecha){
      int id = int(random (100,1000));
      t = new Tiquete(id,fecha,"Automovil");
  }
  String imprimirTiquetes( ) {
    return t.emitirTiquete();
  }
  Tiquete getTiquete(){
    return t;
  }
}
