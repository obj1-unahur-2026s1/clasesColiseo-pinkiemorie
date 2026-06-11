object coliseo {
    method organizarPelea(unosGladiadores, otrosGladiadores) {

    }

    method curarGladiadorSolitario(gladiador) {
        gladiador.recibirCuracion()
    }

    method curarGladiadoresEnGrupo(gladiadores) {
        gladiadores.forEach({g => g.recibirCuracion()})
    }
}