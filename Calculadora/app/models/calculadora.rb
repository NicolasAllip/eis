class Calculadora

attr_reader :cantidad_operaciones
  
  def initialize
    @cantidad_operaciones = 0
  end

  def suma(op1,op2)
    incrementar_cantidad_operaciones
    op1 + op2
  end
  
  def resta(op1,op2)
    incrementar_cantidad_operaciones
    op1 - op2
  end

  def promedio(op1,op2)
    (suma(op1,op2) / 2)
  end

  def incrementar_cantidad_operaciones
    @cantidad_operaciones += 1
  end
end