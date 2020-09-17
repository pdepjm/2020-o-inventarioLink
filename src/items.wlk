object espada {
	method desgaste() = 100
	method esRaro() = true
	
	method mejorar() {
		// debe entender el mensaje, entonces este método va.
		// peeeeero.... No ponemos nada adentro ¡no hace nada!
	}
}

object banana {
	var nivelPotasio = 50
	method desgaste() = nivelPotasio * 0.3
	method nivelPotasio(potasio) {
		nivelPotasio = potasio
	}	
	method esRaro() = nivelPotasio > 100
	
	method mejorar() {
		nivelPotasio = nivelPotasio * 1.03	
	}
}

object cania {
	var desgaste = 0
	
	method desgaste() = desgaste
	
	// por convención de este lenguaje, si quiero decir "tu desgaste es este",
	// se usa la convención de poner el mismo nombre que la variable.
	method desgaste(des) {
		if(des > 150) {
			self.error("Che, no puedo tener desgaste tan alto")
		}
		desgaste = des
		// Otra forma sin tirar error:
		// desgaste = des.min(150)	
		// El cliente nos dijo que tiene que haber error.
	}  
	
	method esRaro() = false
	
	method mejorar() {
		desgaste = desgaste + 3
	}
}

object caja {
	var subitem = cania
	method desgaste() = subitem.desgaste() + 100
	
	method subitem(item) {
		subitem = item
	}
	
	method esRaro() = subitem.esRaro()
	
	method mejorar() {
		subitem.mejorar()
	}
}