abstract class Decorator extends Tiquete{
  //EmitirTiqueteCar eTC;
  Tiquete t;
  //public float altura =0;
    Decorator(Tiquete t){
//    eTC = EmitirTiqueteCar(date);
  //  t=eTC.getTiquete();
  this.t=t;
  }
  String getFecha(){
    return t.getFecha();
  }
  int getIdTiquete(){
    return t.getIdTiquete();
  }
/*  void setFecha(String fecha ) {
    this.fecha=fecha;
  }
  void setIdTiquete(int id){
    this.idTiquete=idTiquete;
  }*/
  String getTipoVehiculo(){
    return t.getTipoVehiculo();
  }
  String emitirTiquete(){
    return t.emitirTiquete();
  }


}
