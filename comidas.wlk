import wollok.game.*
import pepita.*
import extras.*
object manzana {
	const base= 5
	var madurez = 1
	var property image = "manzana.png" 
    var property position = game.at(4,5)
    method image(){
        return image
    } 
    method chocasteConPepita(){
        pepita.comer(self)
        self.image("")
    }
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}

}

object alpiste {
	var property image = "alpiste.png" 
    var property position = game.at(6,5)
    method image(){
        return image
    } 
    method energiaQueOtorga(){
        return 20
    }
    method chocasteConPepita(){
        pepita.comer(self)
        self.image("")
    }
}

