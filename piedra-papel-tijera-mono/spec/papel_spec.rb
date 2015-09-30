require 'rspec' 
require_relative '../model/mono'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'

describe 'Papel' do

	let(:piedra) { Piedra.new }
	let(:tijera) { Tijera.new }
	let(:mono) { Mono.new }
	let(:papel) { Papel.new }

	it 'gana a piedra' do
	  expect(papel.gana_contra_piedra?()).to eq true
	end	
end