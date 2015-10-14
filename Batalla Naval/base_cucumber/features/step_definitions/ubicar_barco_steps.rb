require_relative '../../model/submarino'
require_relative '../../model/batalla_naval'

Given(/^un tablero de (\d+) x (\d+) y la coordenada (\d+),(\d+) vacia$/) do |alto, ancho, x, y|
  @batalla_naval = BatallaNaval.new(ancho,alto)
  @x,@y = [x,y]
end

When(/^ubico el barco tipo submarino$/) do
  @submarino = @batalla_naval.crear_y_ubicar_submarino(@x,@y)
end

Then(/^ubicado exitosamente$/) do
  @batalla_naval.devolver_barco(@x,@y) == @submarino
end