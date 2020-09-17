object espadaMaestra {
	method desgaste() = 100
	method esRaro() = true
	
	method mejorar(){
		// No hace nada mejorar!! (pero entiende el mensaje) XD
	}
}

object bananaBelica {
	var potasio = 1000
	
	method desgaste() = potasio * 0.3
	method esRaro() = potasio > 100
	
	method mejorar(){
		potasio *= 1.1
	}
}

object caniaDePescar {
	var desgaste = 200
	method desgaste() = desgaste
	method esRaro() = false
	
	method mejorar(){
		desgaste += 3
	}
}

object cajaMagica {
	var item = espadaMaestra
	method desgaste() = item.desgaste() + 100
	method esRaro() = item.esRaro()
	
	method mejorar(){
		item.mejorar()
	}
}

