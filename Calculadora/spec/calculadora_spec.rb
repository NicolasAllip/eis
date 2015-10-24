require 'rspec' 
require_relative '../app/models/calculadora'

describe 'Jugador' do

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
end