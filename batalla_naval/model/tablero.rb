require_relative 'submarino'

class Tablero

attr_accessor :cantidad_barcos, :cantidad_filas, :cantidad_columnas

def initialize(filas,columnas)
  @cantidad_filas = filas
  @cantidad_columnas = columnas
  @cantidad_barcos = 0
  @barcos = []
  @posiciones_ocupadas = []
end

def cantidad_filas
  @cantidad_filas
end

def cantidad_columnas
  @cantidad_columnas
end

def ubicar_barco(barco)
  if barco.si_no_esta_en_posiciones_ocupadas(self) && !barco.fuera_del_tablero(self)
    barco.ubicate(self)
  end
end

def barcos
  @barcos
end

def barco(coordenada)
  @barcos.detect do |each|
    each.tiene_coordenada(coordenada)
  end
end

def posiciones_ocupadas
  @posiciones_ocupadas
end

def disparo(coordenada)
  if !@posiciones_ocupadas.include?(coordenada)
    raise "agua"
  end 
end  
end