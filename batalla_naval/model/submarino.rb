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
  @coordenada.first.to_i == coordenada.first.to_i && @coordenada.last.to_i == coordenada.last.to_i
end

def ubicate(tablero)
  tablero.posiciones_ocupadas.push(@coordenada)
  tablero.barcos.push(self)
  tablero.cantidad_barcos += 1
end

def  esta_en_posiciones_ocupadas(tablero)
  if tablero.posiciones_ocupadas.include?(@coordenada)
    raise 'coordenada ya ocupada'
  end
end

def fuera_del_tablero(tablero)
  @fuera_tablero = tablero.cantidad_filas.to_i < @coordenada.last.to_i || tablero.cantidad_columnas.to_i < @coordenada.first.to_i
  if @fuera_tablero
    raise 'fuera del tablero'
  end
end

def herido_o_hundido
  raise 'hundido'
end
end