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

}
/*
sabores() : que devuelve los sabores de las golosinas de la bolsa, idealmente sin repetidos.
P.ej. aunque Mariano tenga tres golosinas de sabor naranja,
 en lo que devuelve sabores() el naranja debería aparecer una sola vez.
Una forma de resolver esto es usando conjuntos; 
revolver en el apunte sobre colecciones y closures: 
https://objetos1wollokunq.gitlab.io/material/guia-colecciones-basicas.pdf.

Lograr que a Mariano se le pueda preguntar golosinasFaltantes(golosinasDeseadas) ,
 donde golosinasDeseadas es una colección de golosinas. 
 Debe devolver las golosinas que están entre las golosinasDeseadas, y que Mariano no compró.
Lograr que a Mariano se le pueda preguntar gustosFaltantes(gustosDeseados),
 que es una consulta similar a la anterior, pero donde gustosDeseados es una colección de gustos.
Debe devolver los gustos que están entre los gustosDeseados,
 y que no están cubiertos por ninguna golosina de las que tiene Mariano.
*/