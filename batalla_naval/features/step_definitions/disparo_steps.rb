require_relative '../../model/submarino'
require_relative '../../model/batalla_naval'
require_relative '../../model/crucero'

Given(/^la coordenada (\d+),(\d+) esta vacia$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada = [x,y]
end

When(/^disparo a esa coordenada$/) do
  begin
    @batalla_naval.disparo(@coordenada)
  rescue Exception => e
     @exception = e
   end
end

Then(/^la coordenada (\d+),(\d+) es agua$/) do |x, y|
  expect(@exception.message).to eq 'agua'
end

#####################################

Given(/^la coordenada (\d+),(\d+) esta ocupada por un crucero$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada = [x,y]
  @crucero = Crucero.new(@coordenada,'vertical')
  @batalla_naval.ubicar_barco(@crucero)
end

When(/^disparo a la coordenada dada$/) do
  begin
    @batalla_naval.disparo(@coordenada)
  rescue Exception => e
     @exception = e
   end
end

Then(/^daño una parte del barco tipo crucero pero no lo hundo$/) do
  expect(@exception.message).to eq 'barco daniado'
end
