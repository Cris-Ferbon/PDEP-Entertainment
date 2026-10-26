import dineroInsuficienteExec.DineroInsuficienteException
class Asistente{

    const bandaAsistida
    var historialEntradas = []
    var dineroDisponible
    var tipoAbono

    method comprarEntrada(entrada){
        try{
            self.comprar(entrada.precioFinal())
            historialEntradas.add(entrada)
            }
            catch errorCompra : DineroInsuficienteException{
                console.println(errorCompra.message()) 
            }

    }

    method comprar(precio){
        if((dineroDisponible - tipoAbono.calcularPrecio(precio)) < 0){
            throw new DineroInsuficienteException()
        }else{
            dineroDisponible -= tipoAbono.calcularPrecio(precio)
        }
    }

    method mostrarEntradasDelAnioAnterior()= historialEntradas.filter({ entrada => entrada.fechaAnioPasado()  }) 

    method mostarNombreBandasDeEntradas()= self.nombresDeBandasCompradas().asSet()

    method totalGastado() = historialEntradas.sum({entrada => entrada})

    method cantidadEntradasCompradas() = historialEntradas.size()

    method nombresDeBandasCompradas() = historialEntradas.flatMap({entrada => entrada.nombreBanda()})

    method cantidadDeEntradasCompradasPorBanda(nombreBanda) = self.nombresDeBandasCompradas().filter({nombre => nombre == nombreBanda }).size()

    method tipoAbono() = tipoAbono

}