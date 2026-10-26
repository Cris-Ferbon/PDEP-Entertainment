import asistente.*
object productora{
    var asistentes =[]
    var bandas = []
    var property impuestoEntrada = 0

    method gananciaTotal() = self.totalVendido() - self.totalGastado()

    method totalVendido() = asistentes.sum({asistente => asistente.totalGastado()})
    method totalGastado() = bandas.sum({banda => banda.presupueto()})

    method totalEntradasVendidas() = asistentes.sum({asistente => asistente.cantidadEntradasCompradas()}) 

    method cantidadEntradaVendidaPorBanda(nombreBanda) = asistentes.sum({asistente => asistente.cantidadDeEntradasCompradasPorBanda(nombreBanda)})

    method bandaMasPopular(){
        var cantidadMaximaVendida = 0 
        var bandaConMasVentas
        bandas.forEach({
            banda =>
                if (cantidadMaximaVendida <= self.cantidadEntradaVendidaPorBanda(banda.nombre())){
                    cantidadMaximaVendida = self.cantidadEntradaVendidaPorBanda(banda.nombre())
                    bandaConMasVentas = banda
                }
        })
        return bandaConMasVentas
    }

    method bonificarAsistenteVIP(){
        asistentes.forEach({
            asistente => asistente.tipoAbono().bonificar()
        })
    }
}