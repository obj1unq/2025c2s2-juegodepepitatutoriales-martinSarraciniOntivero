import extras.*
object pepita {
	var energia = 100
	var property position = game.at(0,1)
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}

	method energia() {
		return energia
	}
	method image(){
		return if(self.estaEnNido()){
			"pepita-grande.png"	
		}else if(self.position() == silvestre.position()){
			"pepita-gris.png"
		}else{
			"pepita.png"
		}
}
	
	method estaEnNido(){
		return position == nido.position()
	}

}


object nido{
	method position(){
		return game.center()
	}
	method image(){
		return "nido.png"	
	}
}
