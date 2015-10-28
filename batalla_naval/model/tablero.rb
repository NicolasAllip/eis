require_relative 'submarino'

class Tablero

attr_accessor :cantidad_filas, :cantidad_columnas, :cantidad_barcos

def initialize(filas,columnas)
  @cantidad_filas = filas
  @cantidad_columnas = columnas
  @cantidad_barcos = 0
  @barcos = []
  @posiciones_ocupadas = []
end

def ubicar_barco(barco)
  @barcos.push(barco)
  barco.ubicate(self)
  @cantidad_barcos += 1
end

def barco(coordenada)
  @barcos.detect do |each|
    each.tiene_coordenada(coordenada)
  end
end

def posiciones_ocupadas
  @posiciones_ocupadas
end

end