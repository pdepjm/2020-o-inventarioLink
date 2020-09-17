import items.*

object link {
	var inventario = [espadaMaestra, bananaBelica]
	var corazones = 0
	
	method estaProhibido(item) = item.desgaste() > 100 * corazones
	
	method agregarItem(item) {
		if(self.estaProhibido(item)) self.error("No se puede agregar un ítem prohibido")
		inventario.add(item)			
	}
	
	method sacarItem(item){
		inventario.remove(item)
	}
	
	method cantidadDeItems() = inventario.size()
	                                     // ( \i -> esRaro i)
	method itemsRaros() = inventario.filter({ item => item.esRaro()})
	                               // map desgaste inventario
	method desgasteDeItems() = inventario.map({ item => item.desgaste()})
	
	method tomarPocionMagica() {
		inventario.forEach({ item => item.mejorar() })
	}
}

object lonk {
	var itemPrincipal = espadaMaestra 
	method estaProhibido(item) = item != itemPrincipal
}