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