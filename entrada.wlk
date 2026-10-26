import productora.*
class Entrada{
    var property banda
    var property fecha
    const precioBase = 1000
        
    method precioFinal() = precioBase + precioBase * productora.impuestoEntrada() / 100

    method fechaAnioPasado() = fecha.year() == (new Date().year() - 1)

    method nombreBanda () = banda.nombre()
}