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
  @coordenada.first == coordenada.first && @coordenada.last == coordenada.last
end

def ubicate(tablero)
  tablero.posiciones_ocupadas.push(@coordenada)
  tablero.barcos.push(self)
  tablero.cantidad_barcos += 1
end

def  si_no_esta_en_posiciones_ocupadas(tablero)
  !tablero.posiciones_ocupadas.include? (self)
end

def fuera_del_tablero(tablero)
  @fuera_tablero = tablero.cantidad_filas.to_i < @coordenada.last.to_i || tablero.cantidad_columnas.to_i < @coordenada.first.to_i
  if @fuera_tablero
    raise "fuera del tablero"
  end
end

end