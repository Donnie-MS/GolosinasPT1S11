

class Bombon {
    var property precio = 15
    var property peso = 15
    const sabor = frutilla
    const esLibreDeGluten = true
    method recibirMordisco() {
        self.peso((peso * 0.8) - 1)
    }
}

object frutilla{
}
object chocolate{
}
object naranja{
}
object vainilla{
}
class Alfajor {
    var property precio = 12
    var property peso = 300
    const sabor = chocolate
    const esLibreDeGluten = false
    method recibirMordisco() {
        self.peso(peso * 0.8)
    }
}

class Caramelo {
    var property precio = 1
    var property peso = 5
    const sabor = frutilla
    const esLibreDeGluten = true
    method recibirMordisco() {
        self.peso(peso - 1)
    }
}
class Chupetin {
    var property precio = 2
    var property peso = 7
    const sabor = naranja
    const esLibreDeGluten = true
    method recibirMordisco() {
        if (peso > 2) {
            self.peso(peso * 0.90 )
        }
    }
}
class Oblea {
    var property precio = 5
    var property peso = 250
    const sabor = vainilla
    const esLibreDeGluten = false
    method recibirMordisco() {
        var pesoAPerder = peso * 0.25
        if (peso > 70) {
            pesoAPerder = peso * 0.5
        }
        self.peso(pesoAPerder)
    }
}
class Chocolatin {
    var property peso
    const precio = peso * 0.50
    const esLibreDeGluten = false
    const sabor = chocolate
    method recibirMordisco() {
        self.peso((peso - 2).max(0))
    }
}
class GolosinaBaniada {
    var property golosinaBase
    var pesoBanio = 4
    var property peso = golosinaBase.peso() + pesoBanio
    const precio = golosinaBase.precio() + 2
    var sabor = golosinaBase.sabor()
    const esLibreDeGluten = golosinaBase.esLibreDeGluten()
    method recibirMordisco() {
        golosinaBase.recibirMordisco()
        pesoBanio = (pesoBanio - 2).max(0)
    }
}
class PastillaTuttiFrutti{
    var property peso = 5 
    const property esLibreDeGluten
    const sabores = [frutilla, chocolate, naranja]
    var saborActual = 0
    method precio() {
        var precioFinal = 7
        if (not esLibreDeGluten) {
            precioFinal = 10
        }
        return precioFinal
    }
    method sabor() = sabores.get(saborActual%3)

    method recibirMordisco() {
        saborActual += 1
    }
}