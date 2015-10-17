class Submarino

attr_accessor :coordenada
def initialize(coordenada)
 @coordenada = coordenada
 @tamanio = 1

end

def x
  coordenada.first
end

def y
  coordenada.last
end

def agregar_coordenadas_ocupadas(posiciones_ocupadas)
  posiciones_ocupadas.push(coordenada)
end

end