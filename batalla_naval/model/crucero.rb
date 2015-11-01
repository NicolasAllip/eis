require_relative 'tablero'
require_relative 'batalla_naval'

class Crucero

def initialize(coordenada,orientacion)
  @coordenada_inicial = coordenada
  @tamanio = 2
  @orientacion = orientacion
  @disparos_recibidos = 0
  @segunda_coordenada = self.coordenada_depende_orientacion(@orientacion,@coordenada_inicial)
end

def coordenada_inicial
  @coordenada_inicial
end 

def segunda_coordenada
  @segunda_coordenada
end

def tiene_coordenada(coordenada)
  if @orientacion == 'vertical'
    self.coordenada_inicial.first.to_i == coordenada.first.to_i && self.coordenada_inicial.last.to_i == coordenada.last.to_i && 
    segunda_coordenada.first.to_i == coordenada.first.to_i && segunda_coordenada.last.to_i == coordenada.last.to_i + 1
  else
    self.coordenada_inicial.first.to_i == coordenada.first.to_i && self.coordenada_inicial.last.to_i == coordenada.last.to_i && 
    segunda_coordenada.first.to_i == coordenada.first.to_i + 1 && segunda_coordenada.last.to_i == coordenada.last.to_i
  end
end

def esta_en_posiciones_ocupadas(tablero)	    
  if tablero.posiciones_ocupadas.any? {|each| [coordenada_inicial,segunda_coordenada].include?(each)}
    raise 'coordenada ya ocupada'
  end
end

def fuera_del_tablero(tablero)
  @fuera_tablero_primer_coordenada = tablero.cantidad_filas.to_i < coordenada_inicial.last.to_i || tablero.cantidad_columnas.to_i < coordenada_inicial.first.to_i
  @fuera_tablero_segunda_coordenada = tablero.cantidad_filas.to_i < segunda_coordenada.last.to_i || tablero.cantidad_columnas.to_i < segunda_coordenada.first.to_i
  if @fuera_tablero_primer_coordenada || @fuera_tablero_segunda_coordenada
    raise 'fuera del tablero'
  end
end

def ubicate(tablero)
    tablero.posiciones_ocupadas.push(@coordenada_inicial)
    tablero.posiciones_ocupadas.push(@segunda_coordenada)
    tablero.barcos.push(self)
    tablero.cantidad_barcos += 1
end

def coordenada_depende_orientacion(orientacion,coordenada_inicial)
  orientacion == 'vertical'? [coordenada_inicial.first,coordenada_inicial.last.to_i + 1]:[coordenada_inicial.first.to_i + 1,coordenada_inicial.last] 
end

def herido_o_hundido
  @disparos_recibidos += 1
  if @disparos_recibidos != @tamanio
    raise 'barco daniado'
  else  
    raise 'hundido'
  end
end
end