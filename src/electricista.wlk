class Electricista inherits Obreros{
	
	var property metrosCable=4
	var property cintaAisladora=1
	var property metrosColocados=4
	
	override method iniciarJornada(obra){
		obra.consumirMetrosDeCable(metrosCable)
		obra.consumirCinta(cintaAisladora)
		self.aporteAlaObra(metrosColocados)
	
	
} 
	
	
	
	
	
	
	
}