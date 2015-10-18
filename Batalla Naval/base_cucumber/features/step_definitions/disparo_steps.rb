Given(/^la coordenada (\d+),(\d+) esta vacia$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada = [x,y]
  @batalla_naval.crear_y_ubicar_crucero(@coordenada,'vertical')
end

When(/^disparo a esa coordenada$/) do 
  @resultado_disparo = @batalla_naval.disparo(@coordenada)
end

Then(/^la coordenada (\d+),(\d+) es agua$/) do |x, y|
  @resultado_disparo = "Agua"
end

#######################

Given(/^la coordenada (\d+),(\d+) esta ocupada por un crucero$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada = [x,y]
  @batalla_naval.crear_y_ubicar_crucero(@coordenada,'vertical')
end

When(/^disparo a la coordenada dada$/) do 
  @resultado_disparo = @batalla_naval.disparo(@coordenada)
end

Then(/^daño una parte del barco tipo crucero pero no lo hundo$/) do
  @resultado_disparo == "Esta daniado"
end

##########################

Given(/^la coordenada (\d+),(\d+) ocupada por un submarino$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada = [x,y]
end

When(/^disparo a la coordenada$/) do 
  @batalla_naval.crear_y_ubicar_submarino(@coordenada)
  @resultado_disparo = @batalla_naval.disparo(@coordenada)
end

Then(/^hundo un barco de tipo submarino$/) do
  @resultado_disparo == "Esta Hundido"
end
