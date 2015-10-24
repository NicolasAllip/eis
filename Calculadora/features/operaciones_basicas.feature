Feature: Operaciones basicas

  Scenario: suma
    Given voy a la pagina de calculadora 
    And eligo el operador suma 
    And un operando es 5
    And otro operando es 2
    When los sumo
    Then el resultado es 7

  Scenario: resta
    Given voy a la pagina de calculadora 
    And eligo el operador restar
    And un operando es 3
    And otro operando es 2
    When los resto
    Then el resultado es 1
@wip
  Scenario: promedio
    Given voy a la pagina de calculadora 
    And eligo el operador promedio 
    And un operando es 4
    And otro operando es 4
    When saco el promedio entre ellos
    Then el resultado es 4
