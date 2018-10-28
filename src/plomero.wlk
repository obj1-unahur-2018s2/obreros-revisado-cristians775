import obreros.*

class Plomero inherits Obrero {

	var property metrosCanio = 10
	var property arandelas = 30
	var property caniosColocados = 9

	override method iniciarJornada(obra) {
		obra.consumirMetrosDeCanio(metrosCanio)
		obra.consumirArandelas(arandelas)
		self.aporteAlaObra(caniosColocados)
		self.jornalTrabajado()
	}

	override method cuantoDebeCobrar() {
		return super() * sindicato.jornalPlomero()
	}

}

