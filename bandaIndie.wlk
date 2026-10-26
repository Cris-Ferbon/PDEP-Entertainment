import Banda.Banda
class BandaTrap inherits Banda(){

    var cantidadInstrumentos 

    override method gastoExtra() = 500 * cantidadInstrumentos
    override method popularidad() = 3.14 * nombre.size()

}