require_relative 'tablero'
require_relative 'submarino'
require_relative 'crucero'

class BatallaNaval

def initialize
  @tablero = Tablero.new(20,20)
end

def crear_y_ubicar_submarino(coordenada)
  @submarino = Submarino.new(coordenada)
  if @submarino.primer_x.to_i > @tablero.cantidad_columnas || @submarino.primer_y.to_i > @tablero.cantidad_filas 
    "Fuera del Tablero"
  else
    @tablero.posiciones_ocupadas.include?(coordenada) ? "coordenada ya ocupada" : @tablero.agregar_barco(@submarino)
  end
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
    each.primer_x == coordenada.first && each.primer_y == coordenada.last
  end
end


def tablero
  @tablero
end

def disparo(coordenada)
  if !@tablero.posiciones_ocupadas.include?(coordenada)
    "Agua"
  else
    @barco_atacado = devolver_barco(coordenada)
    @barco_atacado.disparos_recibidos += 1
    return @barco_atacado.estado
  end
end

end