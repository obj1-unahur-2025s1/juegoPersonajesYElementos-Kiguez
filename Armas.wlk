object ballesta{
    var flechas = 10
    var fueUsada = false

    method fueUsada() = fueUsada

    method flechas() = flechas

    method potencia() = 4

    method UsarArma() {
        flechas = flechas - 1
        fueUsada = true
    }

    method estaCargada() {
        return flechas > 0
    }
}

object jabalina{
    var estaCargada = true
    var fueUsada = false

    method fueUsada() = fueUsada

    method potencia() = 30

    method estaCargada() = estaCargada

    method UsarArma() {
        estaCargada = false
        fueUsada = true
    }


}