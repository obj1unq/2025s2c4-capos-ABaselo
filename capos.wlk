import wollok.vm.*
object artefacto {
  
}
object espadaDelDestino{
    
}

object libroDeHechizos{
  
}

object collarDivino{
  
}

object armaduraDeAceroValyrio{
  
}

object ronlando{
    const  inventario = []
    const  capacidad = 2
    const  historialDeInventarios = [] 
    
    
    method encontrar(artefacto){
           
            self.puedoLevantar()
            inventario.add(artefacto)
            historialDeInventarios.add(artefacto)              
           
           
        }  


    method puedoLevantar() {
         
         if(inventario.size() >= capacidad) {
            self.error("supero la cantidad, debe almacenar en el")
        }        
       
    }    
    method artefactosQueLleva() = inventario

    method llegarAlCastillo(){
        castilloDePiedra.guardarEnElCofre(self.artefactosQueLleva())
        
    }
    method limpiarInventario(){
        inventario.removeAll(inventario)
    }

     method artefactosQuePoseen() = inventario + castilloDePiedra.artefactosQueLleva()

     method loQuePosee(artefacto) = self.artefactosQuePoseen().contains(artefacto)
     
    method noPosee(artefacto) = not self.artefactosQuePoseen().contains(artefacto)

    method historialDeInventarios() = historialDeInventarios
 
}//fin object ronlando


object castilloDePiedra{

 const cofreDeArtefactos = []

 method guardarEnElCofre(artefactos){
    cofreDeArtefactos.addAll(artefactos)
    ronlando.limpiarInventario()
 }

 method todosLosArtefactos(){
    return cofreDeArtefactos.clone()
 }

 method artefactosQueLleva() = cofreDeArtefactos


}

