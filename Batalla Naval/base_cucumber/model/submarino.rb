class Submarino

attr_accessor :coordenada, :disparos_recibidos
def initialize(coordenada)
  @coordenada = coordenada
  @tamanio = 1
  @estado 
  @disparos_recibidos = 0
end

def primer_x
  coordenada.first
end

def primer_y
  coordenada.last
end

def agregar_coordenadas_ocupadas(posiciones_ocupadas)
  posiciones_ocupadas.push(coordenada)
end

def estado
  if @disparos_recibidos == @tamanio
    return "Esta Hundido"
  end
end

end