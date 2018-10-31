import obreros.*

class Gasista inherits Obrero {

	var property metrosCanios = 3
	var property fosforos = 20
	var property caniosColocados = 3

	override method iniciarJornada(obra) {
		obra.consumirMetrosDeCanio(metrosCanios)
		obra.consumirFosforos(fosforos)
		self.aporteAlaObra(caniosColocados)
		self.jornalTrabajado()
	}

	override method cuantoDebeCobrar() {
		return super() * sindicato.jornalGasista()
	}

}

