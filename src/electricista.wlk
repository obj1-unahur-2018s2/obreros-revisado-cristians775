import obreros.*
class Electricista inherits Obrero{
	
	var property metrosCable=4
	var property cintaAisladora=1
	var property metrosColocados=4
	
	override method iniciarJornada(obra){
		obra.consumirMetrosDeCable(metrosCable)
		obra.consumirCinta(cintaAisladora)
		self.aporteAlaObra(metrosColocados)
	   	self.jornalTrabajado()
	
} 
override method cuantoDebeCobrar(){
	
	return super() * sindicato.jornalElectricista()
	
}
	
	
	
	
	
	
	
}