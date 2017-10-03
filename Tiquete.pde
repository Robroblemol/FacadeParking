class Tiquete{
  private int idTiquete = 0;
  private String fecha = "";
  private String tipoVehiculo = "";
  private boolean pago = false;


  Tiquete(int idTiquete,String fecha,String tipoVehiculo){
    this.fecha=fecha;
    this.idTiquete=idTiquete;
    this.tipoVehiculo=tipoVehiculo;
  }
  String getFecha(){
    return fecha;
  }
  int getIdTiquete(){
    return idTiquete;
  }
  void setFecha( ) {
    this.fecha=fecha;
  }
  void setIdTiquete(){
    this.idTiquete=idTiquete;
  }
  String getTipoVehiculo(){
    return tipoVehiculo;
  }
  String emitirTiquete(){
    return " "+getIdTiquete()+" \n"+
           " "+getFecha()+" \n"+
           " "+getTipoVehiculo()+" \n";
  }
}
