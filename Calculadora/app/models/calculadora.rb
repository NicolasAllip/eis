class Calculadora

  def initialize
    @cantidad_operaciones = 0
  end

  def suma(op1,op2)
    @cantidad_operaciones += 1
    op1 + op2
  end

  def cantidad_operaciones
    @cantidad_operaciones	
  end
end