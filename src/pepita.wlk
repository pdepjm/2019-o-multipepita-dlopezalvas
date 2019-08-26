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
	
	/*method baseQuiereVolar(){
		return energia / 5	
	}
	
	method cuantoQuiereVolar(){
		if(energia.between(300,400)){
			return self.baseQuiereVolar()+10
		}if ()
	}*/
	
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

object mijo {
	var energiaMijo 
	
	method mojarse(){
		energiaMijo = 15
	}
	
	method secarse(){
		energiaMijo = 20
	}
	method energiaQueOtorga(){
		return energiaMijo
	}
}

object canelones{
	var energiaCanelones = 20
	
	method agregarSalsa(){
		energiaCanelones += 5
	}
	
	method quitarSalsa(){
		energiaCanelones -= 5
	}
	
	method agregarQueso(){
		energiaCanelones += 7
	}
	
	method quitarQueso(){
		energiaCanelones -= 7
	}
	
	method energiaQueOtorga(){
		return energiaCanelones
	}
}