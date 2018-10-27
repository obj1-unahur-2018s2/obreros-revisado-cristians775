import obreros.*
import albanil.*
class Obra {

	var property ladrillos
	var property metrosDeCanio
	var property metrosDeCable
	var property cinta
	var property fosforos
	var property arandelas
	var plantilla = []

	method agregarObrero(obrero) {
		plantilla.add(obrero)
	}

	method quitarObrero(obrero) {
		plantilla.remove(obrero)
	}

	method iniciarJornada() {
	plantilla.filter({ empleado => !empleado.tieneLicencia()}).forEach({ empleado => empleado.iniciarJornada(self)})
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

}