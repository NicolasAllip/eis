require_relative 'tablero'

class Submarino

def initialize(coordenada)
  @coordenada = coordenada
  @tamanio = 1
end

def coordenada
  @coordenada
end

def tiene_coordenada(coordenada)
  self.coordenada.first == coordenada.first && self.coordenada.last == coordenada.last
end

def ubicate(tablero)
  tablero.posiciones_ocupadas.push(@coordenada)
  tablero.barcos.push(self)
  tablero.cantidad_barcos += 1
end

def  si_no_esta_en_posiciones_ocupadas(tablero)
  !tablero.posiciones_ocupadas.include? (self)
end

end