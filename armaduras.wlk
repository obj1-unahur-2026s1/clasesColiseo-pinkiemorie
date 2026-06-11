class Armadura {
    method puntosDeArmadura(gladiador)
}

class Casco inherits Armadura {
    override method puntosDeArmadura(gladiador) = 10
}

class Escudo inherits Armadura {
    override method puntosDeArmadura(gladiador) = 5 + (gladiador.destreza() * 0.1)
}