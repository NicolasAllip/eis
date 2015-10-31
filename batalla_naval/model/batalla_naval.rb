require_relative 'tablero'
require_relative 'submarino'
require_relative 'crucero'

class BatallaNaval

def initialize
  @tablero = Tablero.new(20,20)
end

def tablero
  @tablero
end

def ubicar_barco(barco)
  @tablero.ubicar_barco(barco)
end

def devolver_barco(coordenada)
  @tablero.barco(coordenada)
end

def disparo(coordenada)
  @tablero.disparo(coordenada)
end

end