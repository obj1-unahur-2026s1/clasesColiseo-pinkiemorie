import armas.*
import armaduras.*

class Gladiador {
    var vida = 100

    method fuerza()
    method destreza()
    method poderDeAtaque()
    method defensa()
    method atacar(gladiador)

    method recibirDaño(cantDaño) {
        vida -= cantDaño
    }
}

class Mirmillon inherits Gladiador {
    const arma
    var armadura
    var fuerza

    override method fuerza() = fuerza
    override method destreza() = 15
    override method poderDeAtaque() = arma.poderDeAtaque() + fuerza
    override method defensa() = armadura.puntosDeArmadura(self) + self.destreza()

    override method atacar(gladiador) {
        gladiador.recibirDaño(self.poderDeAtaque())
    }

    method cambiarArmaduraACasco() {
        armadura = new Casco()
    }

    method cambiarArmaduraAEscudo() {
        armadura = new Escudo()
    }
}

class Dimachaerus inherits Gladiador {
    var armas = []
    var destreza

    override method fuerza() = 10
    override method destreza() = destreza
    override method poderDeAtaque() = self.fuerza() + self.poderAtaqueTotalDeArmas()
    method poderAtaqueTotalDeArmas() = armas.sum({a => a.poderDeAtaque()})
    override method defensa() = destreza / 2

    override method atacar(gladiador) {
        gladiador.recibirDaño(self.poderDeAtaque() - gladiador.defensa())
        destreza += 1
    }

    method agregarArma(arma) {
        armas.add(arma)
    }
}