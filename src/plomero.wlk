class Plomero inherits Obreros{
	
	var property metrosCanio=10
	var property arandelas=30
	var property caniosColocados=9
	
	override method iniciarJornada(obra){
		obra.consumirMetrosDeCanio(metrosCanio)
		obra.consumirArandelas(arandelas) 
		self.aportaAlaObra(caniosColocados)
		)
	
	
} 
	
	
	
}
