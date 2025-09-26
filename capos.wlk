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
            self.error("supero la cantidad")
        }
    }
    

    method artefactosQueLleva() = inventario

}