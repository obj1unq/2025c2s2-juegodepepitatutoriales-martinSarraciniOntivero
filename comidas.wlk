import wollok.game.*
import pepita.*
import extras.*
import randomizer.*
class Manzana {
	const base= 5
	var madurez = 1
	var property image = "manzana.png" 
    const position 
    method position(){
        return position
    }
    method image(){
        return image
    } 
    method chocasteConPepita(){
        pepita.comer(self)
        game.removeVisual(self)
    }
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}

}

class Alpiste {
	var property image = "alpiste.png" 
    const position    

    method position(){
        return position
    }
    method image(){
        return image
    } 
    method energiaQueOtorga(){
        return 20
    }
    method chocasteConPepita(){
        pepita.comer(self)
        game.removeVisual(self)
    }
}

object comidas{
    const comidasTablero = #{}
    const factory = []
    method maximo(){
        return 3
    }

    method comenzar(){
        game.onTick(3000, "COMIDAS", {self.nuevaComida()})
    }
    method  nuevaComida(){
        if(comidasTablero.size() < self.maximo()){
            const comida = new Manzana(position = randomizer.position())
            game.addVisual(comida)
            comidasTablero.add(comida)
        }
    }
    method remover(comida){
        if(comidasTablero.contains(comida)){
            game.removeVisual(comida)
        }
    }
}
