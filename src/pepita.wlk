object pepita {
	var energia = 100
      
	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz(){
		return energia.between(500, 1000)
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}