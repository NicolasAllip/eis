require_relative 'tablero'
require_relative 'submarino'
require_relative 'crucero'

class BatallaNaval

def initialize
  @tablero = Tablero.new(5,5)
end

def crear_y_ubicar_submarino(coordenada)
  @submarino = Submarino.new(coordenada)
  @tablero.posiciones_ocupadas.include?(coordenada) ? "coordenada ya ocupada" : @tablero.agregar_barco(@submarino)
end

def coordenadas_ocupadas_v(coordenada)
  @tablero.posiciones_ocupadas.include?(coordenada) || 
  @tablero.posiciones_ocupadas.include?([(coordenada.first),(coordenada.last.to_i + 1)]) 
end

def coordenadas_ocupadas_h(coordenada)
  @tablero.posiciones_ocupadas.include?(coordenada) || 
  @tablero.posiciones_ocupadas.include?([(coordenada.first.to_i + 1),(coordenada.last)])
end

def crear_y_ubicar_crucero(coordenada,orientacion)
  @crucero = Crucero.new(coordenada,orientacion)
    
    if orientacion == "vertical" && 
    	coordenadas_ocupadas_v(coordenada)
        "coordenada ya ocupada"
      elsif orientacion == "horizontal" && 
        coordenadas_ocupadas_h(coordenada)
          "coordenada ya ocupada"
      else @tablero.agregar_barco(@crucero)
    end
end

def devolver_barco(coordenada)
  @tablero.get_barcos.detect do |each|
    each.x == coordenada.first && each.y == coordenada.last
  end
end

def tablero
  @tablero
end

end