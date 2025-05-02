import cosas.*

object estefania {
  method leGusta(algo) = algo.color().fuerte() 
  
}

object rosa {
    method leGusta(algo) = algo.peso() <= 2000
}

object luisa {
    method leGusta(algo) = algo.brilla() 
}

object juan {
    method leGusta(algo) =  !algo.color().fuerte() || algo.peso() >= 1200 && algo.peso() <= 1800 
    method leGusta1(algo) =  not (algo.color().fuerte()) || algo.peso() >= 1200 && algo.peso() <= 1800
} 

object bolichito {
    method esMonocromatico() = objMostrador.color() == objVidriera.color()    
    
    method esBrillante() = objMostrador.esBrillante() and objVidriera.esBrillante()
 
    method estaEquilibrado() = objMostrador.peso() > objVidriera.peso()

    method hayObjetoDeColor(unColor) {
        objMostrador.color() == unColor || objVidriera.color() == unColor   
    }
    method puedeMejorar() = not self.estaEquilibrado() || self.esMonocromatico() 

    method ofrecerCosaA(objeto,persona) = persona.leGusta(objMostrador) || persona.leGusta(objVidriera)
}

object objVidriera {
    var color = celeste  
    var pesaje = 0
    var material = vidrio

    method peso() = pesaje
    method color() = color   
    method esBrillante() = material.brilla()
}


object objMostrador {
    var color = celeste  
    var pesaje = 0
    var material = vidrio

    method peso() = pesaje
    method color() = color   
    method esBrillante() = material.brilla()
}