import obreros.*
import albanil.*
import uocra.*

class Obra {

	var property ladrillos = 0
	var property metrosDeCanio = 0
	var property metrosDeCable = 0
	var property cinta = 0
	var property fosforos = 0
	var property arandelas = 0
	var property dineroDeLaObra = 0
	var plantilla = []
	var sindicato = uocra
	var _metrosConstruidos = 0
	var _caniosAguaColocados = 0
    var cantidadDePisos=0
    
	method agregarObrero(obrero) {
		plantilla.add(obrero)
		obrero.sindicato(sindicato)
		obrero.obra(self)
		sindicato.agregarObrero(obrero)
	}

	method quitarObrero(obrero) {
		if (!obrero.tieneLicencia()) {
			plantilla.remove(obrero)
		} else {
			self.error("Las leyes laborales están para respetarse - licencia implica estabilidad laboral")
		}
	}

	method iniciarJornada() {
		if (!self.obrerosDisponibles().isEmpty()) {
			self.obrerosDisponibles().forEach({ empleado => empleado.iniciarJornada(self)})
		} else {
			self.error("No hay obreros disponibles para trabajar")
		}
	}

	method estaEnLaPlantilla(obrero) {
		return plantilla.contains(obrero)
	}

	method totalAdeudado() {
		return plantilla.sum({ emp => emp.cuantoDebeCobrar() })
	}

	method obrerosDisponibles() {
		return plantilla.filter({ obreros => !obreros.tieneLicencia() })
	}

	method registrarPago() {
		dineroDeLaObra -= self.totalAdeudado()
		plantilla.forEach({ empleado => empleado.cancelarJornales()})
	}

	method consumirLadrillos(cant) {
		ladrillos = ladrillos - cant
	}

	method consumirMetrosDeCanio(cant) {
		metrosDeCanio = metrosDeCanio - cant
	}

	method consumirMetrosDeCable(cant) {
		metrosDeCable = metrosDeCable - cant
	}

	method consumirCinta(cant) {
		cinta = cinta - cant
	}

	method consumirFosforos(cant) {
		fosforos = fosforos - cant
	}

	method consumirArandelas(cant) {
		arandelas = arandelas - cant
	}

	method metrosConstruidos(cant) {
		_metrosConstruidos = cant
	}

	method metrosConstruidos() {
		return _metrosConstruidos
	}

	method caniosAguaColocados(cant) {
		_caniosAguaColocados = cant
	}

	method caniosAguaColocados() {
		return _caniosAguaColocados
	}
	

}

