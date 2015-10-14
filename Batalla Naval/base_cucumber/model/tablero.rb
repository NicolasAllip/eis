class Tablero

attr_accessor :cantidad_filas, :cantidad_columnas
def initialize(filas,columnas)
  @cantidad_filas = filas
  @cantidad_columnas = columnas
  @cantidad_barcos = 0
  @barcos = []
end

def get_barcos
  @barcos
end

def cantidad_barcos
  @cantidad_barcos
end

def agregar_barco(barco)
  @barcos.push(barco)
  @cantidad_barcos += 1
end
end