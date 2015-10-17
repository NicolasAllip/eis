require_relative 'tablero'

class Crucero

attr_accessor :primer_coordenada, :segunda_coordenada, :orientacion, :disparos_recibidos

def initialize(coordenada,orientacion)
  @primer_coordenada = coordenada
  @orientacion = orientacion
  @tamanio = 2
  @estado 
  @disparos_recibidos = 0
  @segunda_coordenada = self.segunda_coordenada_dependiendo_orientacion(orientacion)
end

def primer_x
  primer_coordenada.first
end

def primer_y
  primer_coordenada.last
end

def segundo_x
  segunda_coordenada.first
end

def segundo_y
  segunda_coordenada.last
end

def agregar_coordenadas_ocupadas(posiciones_ocupadas)
  posiciones_ocupadas.push(primer_coordenada)
  agregar_coordenada_dependiendo_orientacion(orientacion,posiciones_ocupadas) 
end

def agregar_coordenada_dependiendo_orientacion(orientacion,posiciones_ocupadas)
  if orientacion == "vertical"
    posiciones_ocupadas.push([(primer_x),(primer_y.to_i + 1)])
  else
  	posiciones_ocupadas.push([(primer_x.to_i + 1),(primer_y)])
  end
end

def segunda_coordenada_dependiendo_orientacion(orientacion)
  if orientacion == "vertical"
  	@segunda_coordenada = [(primer_x),(primer_y.to_i + 1)]
  else
    @segunda_coordenada = [(primer_x.to_i + 1),(primer_y)]
  end
end

def estado
  if @disparos_recibidos != @tamanio
    "Esta daniado"
  else
    "Esta Hundido"
  end
end
end