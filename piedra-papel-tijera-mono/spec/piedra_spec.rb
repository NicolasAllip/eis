require 'rspec' 
require_relative '../model/mono'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'

describe 'Piedra' do

	let(:piedra) { Piedra.new }
	let(:tijera) { Tijera.new }
	let(:mono) { Mono.new }
	let(:papel) { Papel.new }

	it 'gana a tijera' do
	  expect(piedra.gana_contra_tijera?()).to eq true
	end	
end