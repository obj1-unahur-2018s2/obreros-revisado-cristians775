class Obrero{

	var licencia = false
	
	var aporteObra

	method estaDeLicencia() {
		licencia = true
	}

	method noEstaDeLicencia() {
		 licencia=false
	}
	method tieneLicencia(){
		return licencia
	}

	method iniciarJornada(cant)

	

	method aporteAlaObra(aporte) {
		aporteObra =aporte
	}

	method aporteAlaObra() {
		return aporteObra
	}

}