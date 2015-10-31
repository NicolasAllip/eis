require_relative '../../model/submarino'
require_relative '../../model/batalla_naval'
require_relative '../../model/crucero'

Given(/^la coordenada (\d+),(\d+) vacia$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada = [x,y]
end

When(/^ubico el barco tipo submarino$/) do
  @submarino = Submarino.new(@coordenada)
  @batalla_naval.ubicar_barco(@submarino)
end

Then(/^ubicado exitosamente$/) do
  @batalla_naval.devolver_barco(@coordenada) == @submarino
end

#######################################################

Given(/^la coordenadas (\d+),(\d+) ocupada$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada = [x,y]
  @submarino = Submarino.new(@coordenada)
  @batalla_naval.ubicar_barco(@submarino)
end

When(/^ubico el barco tipo crucero en la coordenada (\d+),(\d+) vertical$/) do |x, y|
  @coordenada_1 = [x,y]
  @crucero = Crucero.new(@coordenada_1,'vertical')
  begin
    @batalla_naval.ubicar_barco(@crucero)
  rescue Exception => e
     @exception = e
   end
end

Then(/^no se puede ubicar$/) do
  expect(@exception.message).to eq 'coordenada ya ocupada'
end