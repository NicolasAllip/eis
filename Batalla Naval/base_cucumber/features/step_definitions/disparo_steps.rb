When(/^disparo a esa coordenada dada$/) do
  @resultado_disparo =@batalla_naval.disparo(@coordenada)
end

Then(/^la coordenada (\d+),(\d+) es agua$/) do |x, y|
  @resultado_disparo = "Agua"
end

#######################

Given(/^la coordenada (\d+),(\d+) ocupada$/) do |x, y|
  @batalla_naval = BatallaNaval.new
  @coordenada = [x,y]
  @batalla_naval.crear_y_ubicar_crucero(@coordenada,'vertical')
end

Then(/^daño una parte del barco tipo crucero pero no lo hundo$/) do
  @batalla_naval.disparo(@coordenada) == "Esta daniado"
end


##########################