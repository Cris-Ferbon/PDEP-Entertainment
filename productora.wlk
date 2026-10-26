import asistente.*
object productora{
    var asistentes =[]
    var bandas = []
    var property impuestoEntrada = 0

    method gananciaTotal() = self.totalVendido() - self.totalGastado()

    method totalVendido() = asistentes.sum({asistente => asistente.totalGastado()})
    method totalGastado() = bandas.sum({banda => banda.presupueto()})

    method totalEntradasVendidas() = asistentes.sum({asistente => asistente.cantidadEntradasCompradas()}) 

    method cantidadEntradasVendidasPorBanda(nombreBanda) = asistentes.sum({asistente => asistente.cantidadDeEntradasCompradasPorBanda(nombreBanda)})

    method bandaMasPopular() = bandas.max({ banda => self.cantidadEntradasVendidasPorBanda(banda) })


    method bonificarAsistenteVIP(){
        asistentes.forEach({
            asistente => asistente.bonificar()
        })
    }

    method agregarAsistente(asistente) = asistentes.add(asistente)
    method agregarBanda(banda) = bandas.add(banda)
}