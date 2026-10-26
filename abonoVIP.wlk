class AbonoVIP{
    var porcentajeDescuento
    method bonificar(){ porcentajeDescuento += porcentajeDescuento*1/100 }
    method calcularPrecio(precio) = precio - precio*porcentajeDescuento/100

}