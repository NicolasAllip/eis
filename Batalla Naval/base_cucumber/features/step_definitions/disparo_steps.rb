When(/^disparo a esa coordenada dada$/) do
  @resultado_disparo =@batalla_naval.disparo(@coordenada)
end

Then(/^la coordenada (\d+),(\d+) es agua$/) do |x, y|
  @resultado_disparo = "Agua"
end

#######################