require_relative 'tablero'
require_relative 'submarino'

class BatallaNaval

def initialize
  @tablero = Tablero.new(5,5)
end

def crear_y_ubicar_submarino(x,y)
  @submarino = Submarino.new(x,y)
  @tablero.agregar_barco(@submarino)
end

def devolver_barco(x,y)
  @tablero.get_barcos.detect do |each|
    each.x == x && each.y == y
  end
end

def tablero
  @tablero
end
end