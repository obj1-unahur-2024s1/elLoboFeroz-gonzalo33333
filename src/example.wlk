/** First Wollok example */
object lobo {
	var peso = 10
	
	
	method estaSaludable() {
		return peso >=20 && peso <= 150	
	}

	method aumentarPeso(cantidad){
		peso = peso+cantidad
	}
	
	method disminuirPeso(cantidad){
		peso = peso-cantidad
	}

	method sufreCrisis(){
		peso = 10
	}
	
	method irHasta(){
		peso = peso - 1
	}
	
	method comerAlgo(pesoComida){
		
		peso = peso + pesoComida*0.1
	}
	
	method pesoActual(){
		return peso
	}
	
	method soplarCasa(tipoDeCasa){
		peso = peso - if (peso >= tipoDeCasa.resistencia()) tipoDeCasa.resistencia() else 0
		}
}


object caperucita{

	method pesoTotal(){
		return self.peso()+canasta.peso()
	}
	
	method peso(){
		return 50
	}
	
}

object canasta{
	var peso = 1.2
	
	method quitarManzana(cantidad){
		peso = peso - cantidad*0.2
	}
	
	method agregarManzana(cantidad){
		peso = peso + cantidad*0.2
	}
	
	method peso(){
		return peso
	}
}

object abuelita{
	
	method peso(){
		return 50
	}
}

object cazador{
	
	method peso(){
		return 70
	}
	
	method vencerAlLobo(){
		return self.peso() >= lobo.pesoActual()*4
	}
}


object chanchito{
	method peso(){
		return 5
	}
	
	method cantidadDeChanchitos(cantidad){
		return self.peso()*cantidad
	}
}

object casaDePaja {
		
	method resistencia(){
		return 0 + chanchito.cantidadDeChanchitos(1)
	}	
}

object casaDeMadera{
	method resistencia(){
		return 5 + chanchito.cantidadDeChanchitos(2)
	}
}

object casaDeLadrillos{
	var resistencia = 0
	
	method cambiarResistencia(cantidadDeLadrillos){
		resistencia = cantidadDeLadrillos*2
	}
	
	method resistencia(){
		return resistencia + chanchito.cantidadDeChanchitos(3)
	}
}