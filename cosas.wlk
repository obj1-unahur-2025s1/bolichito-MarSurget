
//COLORES
object rojo{
   method fuerte() = true  
}
object pardo {
    method fuerte() = false  
}
object verde{
    method fuerte() = true 
}
object celeste{
    method fuerte() = false 
}
object naranja {
  method fuerte() = true
  
}

// MATERIALES
object lino {
  method brilla() = false
}
object cobre { 
  method brilla() = true 
}
object vidrio {
  method brilla() = true   
}
object cuero {
  method brilla() = false 
}
object madera {
  method brilla() = false  
}

object munieco {
  var peso = 100
  method peso() = peso
  method nuevoPeso(nuevo) {
    peso = nuevo
  } 
  method color() = celeste
  method material() = vidrio
  method brilla() = self.material().brilla()
}
object remera {
  method peso() = 800
  method color() = rojo 
  method material() = lino 
  method brilla() = self.material().brilla()
}
object pelota {
  method color() = pardo
  method material() =  cuero 
  method peso() = 1300  
  method brilla() = self.material().brilla()
}
object biblioteca {
  method color() =  verde
  method material() = madera
  method peso() = 8000    
  method brilla() = self.material().brilla()
}
object placa {
  var color = rojo 
  var peso = 1500
  method material() = cobre  
  method color() = color  
  method peso() = peso
  method brilla() = self.material().brilla()
}
object arito {
  method material() = cobre  
  method color() = celeste  
  method peso() = 180  
  method brilla() = self.material().brilla()
}
object banquito {
  var color = naranja
  method material() = madera  
  method color() = color  
  method peso() = 1700  
  method brilla() = self.material().brilla()
}

object cajita {
  var objetoGuardado = arito
  method material() = cobre  
  method color() = rojo  
  method peso() =  400 + objetoGuardado.peso()
  method objetoDentro(nuevoObjeto) {
    objetoGuardado = nuevoObjeto
  }
  method brilla() = self.material().brilla()
}