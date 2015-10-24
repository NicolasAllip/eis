#require_relative 'algunmodelo?'
require_relative 'models/calculadora'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers
    calculadora = Calculadora.new
    enable :sessions

    get 'calculadora' do
      render 'operaciones'
    end

    post 'calculadora' do
      params[:operando1]
      params[:operando2]
      params[:operador]
      @operando1 = params[:operando1]
      @operando2 = params[:operando2]
      @operador = params[:operador]
      @resultado = calculadora.send(@operador, @operando1.to_i, @operando2.to_i)
      render 'operaciones'
    end
  end
end