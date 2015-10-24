require 'rspec' 
require_relative '../app/models/calculadora'

describe 'Calculadora' do

  let(:calculadora) { Calculadora.new }

  it 'cantidad de operaciones de la calculadora al iniciar es 0' do
	expect(calculadora.cantidad_operaciones).to eq 0
  end
	
  it 'cantidad de operaciones de la calculadora al iniciar es 0' do
	expect(calculadora.cantidad_operaciones).to eq 0
  end

  it 'calculadora sumar 1 y 2 deberia dar 3' do
	expect(calculadora.suma(1,2)).to eq 3
  end

  it 'calculadora resta 4 y 5 deberia dar -1' do
	calculadora.resta(4,5)
	calculadora.suma(4,5)
	expect(calculadora.resta(4,5)).to eq -1
	expect(calculadora.cantidad_operaciones).to eq 3
  end

end