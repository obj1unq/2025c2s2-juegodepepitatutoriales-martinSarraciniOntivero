import extras.*
object pepita {
	var energia = 500
	var property position = game.at(0,1)
	var property image = "pepita.png" 
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
		return image
	}

	method estaEnNido(){
		return position == nido.position()
	}
	method estaConSilvestre(){
		return self.position() == silvestre.position()
	}
	method mover(direccion) { 
        if (not self.hayMuroEnDireccion(direccion) and self.hayBordeMapa(direccion) ) {
                self.validarEnergia()
                position = direccion.siguiente(self) 
                self.volar(1)
        }
    }
	method validarEnergia(){
		if( energia <= 11){
			self.error("no tiene energia para volar")
		}
	}
	method hayMuroEnDireccion(direccion){
		return direccion.siguiente(self) == muro.position()
	}
	method hayBordeMapa(direccion){
		return direccion.siguiente(self).x().between(0, 9) and  direccion.siguiente(self).y().between(0, 9)
	}

}



