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

