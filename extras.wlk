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
}

object nido{
	method position(){
		return game.at(8,7)
	}
	method image(){
		return "nido.png"	
	}
}

object muro{
	method position(){
		return game.center()
	}
    method iamge(){
        return "muro.png"
    }
}

object izquierda{
    method siguiente(personaje){
        return personaje.position().left()
    }
}
object derecha{
    method siguiente(personaje){
        return personaje.position().right()
    }
}
object abajo{
    method siguiente(personaje){
        return personaje.position().down()
    }
}
object arriba{
    method siguiente(personaje){
        return personaje.position().up()
    }
}