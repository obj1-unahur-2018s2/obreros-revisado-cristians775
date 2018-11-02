class Casa inherits Obra{
	var cantidadBanios=0
	var cantidadHabitacion=0
	var cantidadPisos=0
	
	method cantidadDeBanios(cant){
		cantidadBanios=cant
	}
	method cantidadDeBanios(){
		return cantidadBanios
	}
	method cantidadDeHabitaciones(cant){
		cantidadHabitacion=cant
	}
	method cantidadDeHabitaciones(){
		return cantidadHabitacion
	}
	method cantidadDePisos(cant){
		cantidadPisos=cant
	}
	method cantidadDePisos(){
		return cantidadPisos
	}
}
