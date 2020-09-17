object link {
	var cantCorazones = 1
	const inventario = #{} // conjunto. ¡No tiene orden! Y NO TIENE REPETIDOS
	
	method cantCorazones(cant) {
		cantCorazones = cant
	}
	
	method estaProhibido(item) = not (cantCorazones * 100 > item.desgaste())
	
	method agarrar(item) {
		if(self.estaProhibido(item)) {
			self.error("No puedo agarrar este item porque está prohibido: " + item.toString() )
		}
		inventario.add(item)
	}
	
	method soltar(item) {
		inventario.remove(item)
	}
	
	method cantidadItems() = inventario.size()
	
	        // se puede pensar como lambda: (\item -> esRaro item)
	method itemsRaros() = inventario.filter({ item => item.esRaro() })
	
	method desgastes() = inventario.map({ item => item.desgaste() })
	
	method tomarPocion() { 
		// el foreach no devuelve nada
		// el map devuelve una lista
		// el foreach es método de acción
		// el map es método de consulta
		// Por buena práctica intentamos no mezclarlos.
		
		inventario.forEach({ item => item.mejorar() })
	}
	
	method sumaDesgastes() = self.desgastes().sum()
	//  v2: method sumaDesgastes() = inventario.sum({item => item.desgaste()})
}

object lonk {
	var itemPrincipal
	method estaProhibido(item) = itemPrincipal != item
	method itemPrincipal(item){
		itemPrincipal = item
	}
}

// Identidad de un objeto: acá sólo hay una caja.
// Por ejemplo, el 200 era apuntado por dos objetos porque ES EL MISMO, tiene identidad.
// No hay otro 200, es uno solo.
// El == es un método, así que técnicamente podría implementarse distinto.
// Pero por ahora podemos considerar que un objeto es != a otro si no es el mismo.

// Para inicializar un objeto, hay que preguntarle al cliente
// ¡Esto es análisis de sistemas!
// Que funcione no significa que funcione bien. ¡Ojo!
// (ídem con las excepciones).

// El mensaje del error es importante, me da INFORMACION 
// ¡es la razón por la que los errores son buenos!