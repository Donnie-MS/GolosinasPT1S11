import golosinas.*
object mariano {
    var bolsaDeGolosinas = []
    method comprar(unaGolosina) {
        bolsaDeGolosinas.add(unaGolosina)
    }
    method desechar(unaGolosina) {
        bolsaDeGolosinas.remove(unaGolosina)
    }
    method cantGolosinas() = bolsaDeGolosinas.size()
    method tieneLaGolosina(unaGolosina) = bolsaDeGolosinas.contains(unaGolosina)
    method probarGolosinas() {
        bolsaDeGolosinas.forEach({golosina => golosina.recibirMordisco()})
    } 
    method hayGolosinasSinTACC() = bolsaDeGolosinas.any({golosina => golosina.esLibreDeGluten()})
    method preciosCuidados() = bolsaDeGolosinas.any({golosina => golosina.precio() <= 10})
    method golosinaDeSabor(unSabor) = bolsaDeGolosinas.find({golosina => golosina.sabor() == unSabor})
    method golosinasDeSabor(unSabor) = bolsaDeGolosinas.filter({golosina => golosina.sabor() == unSabor})
    method golosinaMasCara() = bolsaDeGolosinas.max({golosina => golosina.precio()})
    method pesoGolosinas() = bolsaDeGolosinas.sum({golosina => golosina.peso()})
    method sabores() = bolsaDeGolosinas.asSet()
    method golosinasFaltantes(golosinasDeseadas) = bolsaDeGolosinas.asSet().difference(golosinasDeseadas)
    method gustosFaltantes(gustosDeseados) = self.sabores().difference(gustosDeseados)

}
