Feature: memoria de cantidad de operaciones

  Scenario: no hice operaciones
    Given voy a la pagina de calculadora 
    And no hice operaciones
    Then la cantidad de operaciones es 0

  Scenario: cuando hago operaciones la cantidad de incrementa
    Given voy a la pagina de calculadora 
    And hago una suma
    And hago una resta
    Then cantidad de operaciones es 2

  Scenario: cuando se resetea la cantidad de operaciones vuelve a cero
    Given voy a la pagina de calculadora 
    And hago una suma
    And hago una resta
    And reseteo la memoria
    Then la cantidad de operaciones es 0
