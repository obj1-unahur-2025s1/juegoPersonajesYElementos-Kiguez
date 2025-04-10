import Armas.*
object luisa {
    var personajeActivo = 0

    method personajeActivo() = personajeActivo

    method ElegirA_ComoPersonaje(personaje) {
        personajeActivo = personaje
    }

    method aparece_(elemento) { //Se asume que luisa ya eligio a un personaje antes de realizar esta accion
        personajeActivo.Encontrar_(elemento)
    }
}

object floqui {
    var armaElegida = ballesta
    
    method armaElegida() = armaElegida

    method Elegir_ComoArma(arma) {
        armaElegida = arma
    }

    method Encontrar_(elemento) {
        if(armaElegida.estaCargada()) {
            armaElegida.UsarArma()
            elemento.recibirAtaqueCon_DePotencia(armaElegida.potencia())
        }
    }
}

object mario {
    var valorRecolectado = 0
    var alturaDeultimoElemento = 0

    method valorRecolectado()       = valorRecolectado
    method alturaDeultimoElemento() = alturaDeultimoElemento

    method AumentarValorEn_(aumentar) {
        valorRecolectado = valorRecolectado + aumentar
    }
    method Encontrar_(elemento) {
        elemento.RecibirUnTrabajo()
        alturaDeultimoElemento = elemento.altura()
    }

    method sosFeliz() {
        return
            valorRecolectado >= 50 or 
            alturaDeultimoElemento >= 10

    }
}