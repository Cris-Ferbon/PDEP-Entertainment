import banda.Banda
class BandaTrap inherits Banda{

    var tieneHielo
    
    override method canon() = 1000000 * self.popularidad()
    override method gastoExtra() = 0 
    override method popularidad() {
        if (tieneHielo){
            return 1000
        }else {return 0}
    } 

}