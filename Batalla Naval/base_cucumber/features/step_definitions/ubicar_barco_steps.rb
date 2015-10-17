require_relative '../../model/submarino'
require_relative '../../model/batalla_naval'

Given(/^la coordenada (\d+),(\d+) vacia$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @x,@y = [x,y]
end

When(/^ubico el barco tipo submarino$/) do
  @batalla_naval.crear_y_ubicar_submarino(@x,@y)
end

Then(/^ubicado exitosamente$/) do
  @batalla_naval.devolver_barco(@x,@y) == @submarino
end

####################