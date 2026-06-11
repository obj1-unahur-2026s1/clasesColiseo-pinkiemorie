class Arma {
    method poderDeAtaque()
}

class ArmaDeFilo inherits Arma {
    const filo
    const longitud

    override method poderDeAtaque() = filo * longitud
}

class ArmaContundente inherits Arma {
    const peso

    override method poderDeAtaque() = peso
}