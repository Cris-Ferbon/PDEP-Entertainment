import dineroInsuficienteExec.DineroInsuficienteException
class Asistente{

    var historialEntradas = []
    var dineroDisponible
    var tipoAbono

    method comprarEntrada(entrada){
        self.comprar(entrada.precioFinal())
        historialEntradas.add(entrada)
    }

    method comprar(precio){
        if(!self.puedePagar(precio)){
            throw new DineroInsuficienteException()
        }

        dineroDisponible -= tipoAbono.calcularPrecio(precio)
    }

    method puedePagar(precio) = dineroDisponible >= tipoAbono.calcularPrecio(precio)

    method mostrarEntradasDelAnioAnterior()= historialEntradas.filter({ entrada => entrada.fechaAnioPasado()  })

    method totalGastado() = historialEntradas.sum({entrada => entrada.precioFinal()})

    method cantidadEntradasCompradas() = historialEntradas.size()

    method nombresDeBandasCompradas() = historialEntradas.map({entrada => entrada.nombreBanda()}).asSet()

    method cantidadDeEntradasCompradasPorBanda(unaBanda) = historialEntradas.filter({entrada => entrada.banda() == unaBanda }).size()

    method bonificar() = tipoAbono.bonificar()

}