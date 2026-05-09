object neo {
    var energia = 100

    method saltar(){
        energia = energia / 2
    }

    method vitalidad() = energia * 0.1

    method esElegido() = true
  
}
object morfeo {
    var vitalidad = 8
    var estaCansado = false

    method saltar() {
        vitalidad -= 1
        estaCansado = !estaCansado
    }

    method vitalidad() = vitalidad

    method esElegido() = false
}
object trinity {

    method vitalidad() = 0

    method saltar() {}

    method esElegido() = false
}

object nave {
    const property pasajeros = [neo, morfeo, trinity] //Podria manejar esta coleccion como conjunto

    method cantidadDePasajeros() {
        return pasajeros.size()
    }

    method pasajeroMayorVitalidad() {
        return pasajeros.max({p => p.vitalidad()})
    }

    method pasajeroMenorVitalidad() {
        return pasajeros.min({p => p.vitalidad()})
    }

    method estaEquilibrada() {
      return self.pasajeroMayorVitalidad() <= self .pasajeroMenorVitalidad() * 2
    }

    method estaElElegido() {
      return pasajeros.any({p => p.esElegido()})
    }

    method chocar() {
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }
}