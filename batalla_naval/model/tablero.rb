require_relative 'crucero'

class Tablero

attr_accessor :cantidad_filas, :cantidad_columnas
def initialize(filas,columnas)
  @cantidad_filas = filas
  @cantidad_columnas = columnas
  @cantidad_barcos = 0
  @barcos = []
  @posiciones_ocupadas = []
end

def get_barcos
  @barcos
end

def posiciones_ocupadas
  @posiciones_ocupadas
end

def cantidad_barcos
  @cantidad_barcos
end

def cantidad_filas
  @cantidad_filas
end

def cantidad_columnas
  @cantidad_columnas
end

def agregar_barco(barco)
  @barcos.push(barco)
  @cantidad_barcos += 1
  barco.agregar_coordenadas_ocupadas(@posiciones_ocupadas)
end
end