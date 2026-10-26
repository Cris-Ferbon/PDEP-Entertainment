import banda.Banda
class BandaRock inherits Banda{

    var cantidadSolosGuitarra
    override method gastoExtra() = 10000
    override method popularidad() = cantidadSolosGuitarra * 100

}