import extras.*
object pepita {
	var energia = 500
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
		}else if(self.estaConSilvestre()){
			"pepita-gris.png"
	
		}else{
			"pepita.png"
		}
}
	method perdi(){
		if(self.estaConSilvestre() and self.energia() < 11){
			game.say(self, "perdi")
		}
	}
	method estaEnNido(){
		return position == nido.position()
	}
	method estaConSilvestre(){
		return self.position() == silvestre.position()
	}
	method mover(direccion) { 
        if (self.hayMuroEnDireccion(direccion)) {
                self.validarEnergia()
                position = direccion.siguiente(self) 
                self.volar(1)
				self.gane()
				self.perdi()
        }
    }
	method validarEnergia(){
		return energia >= 11
	}
	method hayMuroEnDireccion(direccion){
		return direccion == muro.position()
	}
	method gane(){
		if( self.estaEnNido()){
			game.say(self,"GANE")
		}
	}
}
/* dos problemas: no aparece el muro en el visual y pepita no se mueve*/


