require 'rspec' 
require_relative '../model/mono'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'

describe 'Tijera' do

	let(:piedra) { Piedra.new }
	let(:tijera) { Tijera.new }
	let(:mono) { Mono.new }
	let(:papel) { Papel.new }

	it 'tijera le gana a papel' do
	  expect(tijera.gana_contra_papel?()).to eq true
	end	
end