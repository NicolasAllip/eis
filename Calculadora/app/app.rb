#require_relative 'algunmodelo?'
require_relative 'models/calculadora'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers
    calculadora = Calculadora.new
    enable :sessions

    get 'calculadora' do
      @reset = calculadora.resetear_memoria
      render 'operaciones'
    end

    post 'calculadora' do
      @operando1 = params[:operando1]
      @operando2 = params[:operando2]
      @operador = params[:operador]
      @resultado = calculadora.send(@operador, @operando1.to_i, @operando2.to_i)
      @cant_operaciones = calculadora.cantidad_operaciones
      render 'operaciones'
    end
  end
end