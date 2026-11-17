import banda.Banda
class BandaTrap inherits Banda{

    var tieneHielo
    
    override method canon() = 1000000 * self.popularidad()
    override method gastoExtra() = 0 
    override method popularidad() {
        var popularidad = 0
        if (tieneHielo) popularidad = 1000

        return popularidad
    }

}