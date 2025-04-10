import jugadoresYPersonajes.mario

object castillo{
     var defensa = 150

     method altura() = 20

     method defensa() = defensa

     method recibirAtaqueCon_DePotencia(potencia) {
        defensa = defensa - potencia
     }

     method RecibirUnTrabajo() {
        defensa = 200.min(defensa + 20)
        mario.AumentarValorEn_(defensa/5)
     }
}

object aurora{
    var estaViva = true

    method altura() = 1

    method estaViva() = estaViva

    method recibirAtaqueCon_DePotencia(potencia) {
        if(potencia >= 10) {
            estaViva = false
        }
    }

    method RecibirUnTrabajo() {
        mario.AumentarValorEn_(15)
    }
}

object tipa{
    var altura = 8

    method altura() = altura

    method recibirAtaqueCon_DePotencia(potencia) {}

    method RecibirUnTrabajo() {
        altura = altura + 1
        mario.AumentarValorEn_(altura * 2)
    }
}