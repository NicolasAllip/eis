require_relative 'tablero'
require_relative 'submarino'

class BatallaNaval

attr_accessor :tablero

def initialize
  @tablero = Tablero.new(20,20)
end

def crear_y_ubicar_submarino(coordenada)
  @submarino = Submarino.new(coordenada)
  @tablero.ubicar_barco(@submarino)
end

def devolver_barco(coordenada)
  @tablero.barco(coordenada)
end

end