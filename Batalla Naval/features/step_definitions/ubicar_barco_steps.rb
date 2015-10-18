require_relative '../../model/submarino'
require_relative '../../model/batalla_naval'

Given(/^la coordenada (\d+),(\d+) vacia$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada = [x,y]
end

When(/^ubico el barco tipo submarino$/) do
  @batalla_naval.crear_y_ubicar_submarino(@coordenada)
end

Then(/^ubicado exitosamente$/) do
  @batalla_naval.devolver_barco(@coordenada) == @submarino
end

####################

Given(/^la coordenadas (\d+),(\d+) ocupada$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada = [x,y]
  @batalla_naval.crear_y_ubicar_submarino(@coordenada)
end

When(/^ubico el barco tipo crucero en la coordenada (\d+),(\d+) vertical$/) do |x1, y1|
  @coordenada_1 = [x1,y1]
  @resultado = @batalla_naval.crear_y_ubicar_crucero(@coordenada_1,'vertical')
end

Then(/^no se puede ubicar$/) do
  @resultado == "coordenada ya ocupada"
end

##########################

Given(/^la coordenada (\d+),(\d+)$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada_fuera_Tablero = [x,y]
end

When(/^ubico el barco tipo submarino en esa coordenada dada$/) do
  @resultado = @batalla_naval.crear_y_ubicar_submarino(@coordenada_fuera_Tablero)
end

Then(/^fuera del tablero$/) do
  @resultado == "Fuera del Tablero"
end
