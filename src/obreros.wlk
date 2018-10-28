class Obrero {

	var licencia = false
	var _jornales=0
	var aporteObra
    var property  sindicato=null
    var obraCol=[]
	method estaDeLicencia() {
		licencia = true
	}

	method noEstaDeLicencia() {
		licencia = false
	}

	method tieneLicencia() {
		return licencia
	}

	method iniciarJornada(cant)

	method aporteAlaObra(aporte) {
		aporteObra = aporte
	}

	method jornalTrabajado() {
		
		_jornales += 1
		
	}

	method jornalesAdeudados() {
		return _jornales
	}

	method aporteAlaObra() {
		return aporteObra
	}
	
	method cuantoDebeCobrar(){
		
		return self.jornalesAdeudados()
		
	}
	method cancelarJornales(){
		
		_jornales=0;
		
	}
	method obra(obra){
		
		obraCol.add(obra)
		
	}
   method pasoPor(obra){
   	
   	return obraCol.contains(obra)
   	 
   }
}

