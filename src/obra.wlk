import obreros.*
import albanil.*
import uocra.*
class Obra {

	var property ladrillos
	var property metrosDeCanio
	var property metrosDeCable
	var property cinta
	var property fosforos
	var property arandelas
	var property dineroDeLaObra
	var plantilla = []
    var sindicato=uocra
	method agregarObrero(obrero) {
		
		plantilla.add(obrero)
		obrero.sindicato(sindicato)
		obrero.obra(self)
		sindicato.agregarObrero(obrero)
		
	}

	method quitarObrero(obrero) {
		if(!obrero.tieneLicencia()){
		plantilla.remove(obrero)
			}else{
				
				self.error("Las leyes laborales están para respetarse - licencia implica estabilidad laboral")
			}
		
	}

	method iniciarJornada() {
		if (plantilla.size()>0){
		plantilla.filter({ empleado => !empleado.tieneLicencia()}).forEach({ empleado => empleado.iniciarJornada(self)})
		}else{
			
			self.error("No hay obreros disponibles para trabajar")
		}
	}
    
    method estaEnLaPlantilla(obrero) {
		return plantilla.contains(obrero)
	}
	method totalAdeudado(){
		
		return plantilla.sum({emp=>emp.cuantoDebeCobrar()})
		
	}
    method registrarPago(){
    	
    	dineroDeLaObra-=self.totalAdeudado()
    	plantilla.forEach({empleado=>empleado.cancelarJornales()})
    	
    	
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

