require_relative 'tablero'
require_relative 'batalla_naval'

class Crucero

def initialize(coordenada,orientacion)
  @coordenada_inicial = coordenada
  @tamanio = 2
  @orientacion = orientacion
  @segunda_coordenada = self.coordenada_depende_orientacion(@orientacion,@coordenada_inicial)
end

def coordenada_inicial
  @coordenada_inicial
end 

def segunda_coordenada
  @segunda_coordenada
end

def tiene_coordenada(coordenada)
  (self.coordenada_inicial.first == coordenada.first) && (self.coordenada_inicial.last == coordenada.last) && 
  (segunda_coordenada.first == coordenada.first) && (segunda_coordenada.last == coordenada.last)
end

def si_no_esta_en_posiciones_ocupadas(tablero)	 
  @coordenadas_barco = [coordenada_inicial,segunda_coordenada]
  @posicion_ocupada = tablero.posiciones_ocupadas.any? {|each| @coordenadas_barco.include?(each)}
  if  !@posicion_ocupada
    raise 'coordenada ya ocupada'
  end
end

def ubicate(tablero)
  if si_no_esta_en_posiciones_ocupadas(tablero)
    tablero.posiciones_ocupadas.push(@coordenada_inicial)
    tablero.posiciones_ocupadas.push(@segunda_coordenada)
    tablero.barcos.push(barco)
    tablero.cantidad_barcos += 1
  end
end

def coordenada_depende_orientacion(orientacion,coordenada_inicial)
  orientacion == 'vertical'? [coordenada_inicial.first,coordenada_inicial.last.to_i + 1]:[coordenada_inicial.first.to_i + 1,coordenada_inicial.last] 
end

end