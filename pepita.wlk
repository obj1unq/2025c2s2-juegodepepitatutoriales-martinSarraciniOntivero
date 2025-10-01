import extras.*
object pepita {
	var energia = 500
	var property position = game.at(0,1)
	var property image = "pepita.png" 
	var property text = ""
	const property obstaculos = [muro1,muro2,muro3] 
	method text(){
		return text
	}
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - (10 - kms)
	}

	method energia() {
		return energia
	}
	method image(){
		return image
	}
	method gane(){
		
	}
	
	
	method mover(direccion) { 
        if (not self.hayMuroEnSiguienteDireccion(direccion) and self.hayBordeMapa(direccion) ) {
                self.validarEnergia()
                position = direccion.siguiente(self) 
                self.volar(1)
        }
    }
	method validarEnergia(){
		if( energia < 9){
			self.image("pepita-gris.png")
			self.error("no tiene energia para volar")
		}
	}
	method hayMuroEnSiguienteDireccion(direccion){
		return obstaculos.any({obstaculo => self.esObstaculoEnSiguiente(obstaculo,direccion)})
	}
	method esObstaculoEnSiguiente(obstaculo,direccion){
		return direccion.siguiente(self) == obstaculo.position()
	}
	method agregarObstaculo(nombre){
		obstaculos.add(nombre)
	}

	method hayBordeMapa(direccion){
		return direccion.siguiente(self).x().between(0, 9) and  direccion.siguiente(self).y().between(0, 9)
	}

}



