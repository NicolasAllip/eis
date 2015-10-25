#Suma

Given(/^voy a la pagina de calculadora$/) do
  visit 'calculadora'
end

Given(/^eligo el operador suma$/) do
  select('Suma', from:'operador') 
end

Given(/^un operando es (\d+)$/) do |operando1|
  fill_in 'operando1', with: operando1
end

Given(/^otro operando es (\d+)$/) do |operando2|
  fill_in 'operando2', with: operando2
end

When(/^los sumo$/) do
  click_button('resultado')
end

Then(/^el resultado es (\d+)$/) do |resultado|
  expect(page).to have_content(resultado)
end


#Resta

Given(/^eligo el operador restar$/) do
  select('Resta', from:'operador')
end

When(/^los resto$/) do
  click_button('resultado')
end

#Promedio

Given(/^eligo el operador promedio$/) do
  select('Promedio', from:'operador')
end

When(/^saco el promedio entre ellos$/) do
  click_button('resultado')
end
