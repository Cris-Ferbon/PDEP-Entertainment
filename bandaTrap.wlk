import Banda.Banda
class BandaTrap inherits Banda(){

    var tieneHielo
    override method gastoExtra() = 0 
    override method popularidad() {
        if (tieneHielo){
            return 1000
        }else {return 0}
    } 

    override  method presupueto(){
        return super() * self.popularidad() 
    } 
}