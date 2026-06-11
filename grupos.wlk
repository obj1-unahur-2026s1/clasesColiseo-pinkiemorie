class Grupo {
    const nombre
    const gladiadores = []
    var cantPeleas = 0

    method nombre() = nombre
    method elegirCampeon() = self.gladiadoresConVida().max({g => g.fuerza()})
    method gladiadoresConVida() = gladiadores.filter({g => g.vida() > 0})

    method agregarGladiador(gladiador) {
        gladiadores.add(gladiador)
    }

    method agregarVariosGladiadores(gladiador) {
        gladiadores.addAll(gladiador)
    }

    method quitarGladiador(gladiador) {
        if (gladiadores.contains(gladiador)) {
            gladiadores.remove(gladiador)
        }
    }

    method pelearRound() {
        self.elegirCampeon()
    }
}