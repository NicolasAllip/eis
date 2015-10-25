Given(/^no hice operaciones$/) do
  visit 'calculadora'
end

Then(/^la cantidad de operaciones es (\d+)$/) do |cantidad|
  page.has_content?(cantidad)
end

############################

Given(/^hago una suma$/) do
  visit 'calculadora'
  select('Suma', from:'operador') 
  fill_in 'operando1', with: 1
  fill_in 'operando2', with: 2
  click_button('resultado')
end

Given(/^hago una resta$/) do
  visit 'calculadora'
  select('Resta', from:'operador') 
  fill_in 'operando1', with: 1
  fill_in 'operando2', with: 2
  click_button('resultado')
end

Then(/^cantidad de operaciones es (\d+)$/) do |cantidad|
  expect(page).to have_content(2)
end

############################
