
class Albanil inherits Obreros{
	
 var property cantLadrillos=100
 var property metrosColocados=3
 
 
override method iniciarJornada(obra){
	
	obra.consumirLadrillos(cantLadrillos)
	self.aporteAlaObra(metrosColocados)
	
	
} 


	
	
	
	
	
	
	
}