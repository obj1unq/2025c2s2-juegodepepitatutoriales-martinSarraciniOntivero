import pepita.*
import pepitaGame.*
object silvestre{
    var property position = game.at(3,0)
    method image(){
        return "silvestre.png"
    }
    method position(){
         if(pepita.position().x().between(0, 3)){
            return position
        }else{
            return game.at(pepita.position().x(), position.y())
        }
    }
    method chocasteConPepita(){
        pepita.image("pepita-gris.png")
        game.onTick(2000, "perdio pepita", {game.stop()})
        pepita.text("PERDI")
    }
}

object nido{
	method position(){
		return game.at(8,7)
	}
	method image(){
		return "nido.png"	
	}
    method chocasteConPepita(){
        pepita.image("pepita-grande.png")
        game.onTick(2000, "perdio pepita", {game.stop()})
        pepita.text("GANE") 
    }
}

object muro1{
	method position(){
		return game.center()
	}
    method image(){
        return "muro.png"
        
    }
    
}

object muro2{
	method position(){
		return game.at(5,7)
	}
    method image(){
        return "muro.png"
        
    }
    
}

object muro3{
	method position(){
		return game.at(5,6)
	}
    method image(){
        return "muro.png"
        
    }
    
}





object izquierda{
    method siguiente(personaje){
        return personaje.position().left(1)
    }
}
object derecha{
    method siguiente(personaje){
        return personaje.position().right(1)
    }
}
object abajo{
    method siguiente(personaje){
        return personaje.position().down(1)
    }
}
object arriba{
    method siguiente(personaje){
        return personaje.position().up(1)
    }
}




