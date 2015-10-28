require_relative 'tablero'

class Submarino

attr_accessor :coordenada

def initialize(coordenada)
  @coordenada = coordenada
  @tamanio = 1
end

def x
  @coordenada.first
end

def y
  @coordenada.last
end

def tiene_coordenada(coordenada)
  self.x == coordenada.first && self.y == coordenada.last
end

def ubicate(tablero)
  tablero.posiciones_ocupadas.push(self.coordenada)
end

end