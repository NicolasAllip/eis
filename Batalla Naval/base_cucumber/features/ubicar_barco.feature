Feature: Como usuario quiero ubicar mis barcos

  Scenario: Ubico mi barco exitosamente
    Given un tablero de 5 x 5 y la coordenada 3,2 vacia 
    When ubico el barco tipo submarino
    Then ubicado exitosamente	

@wip
  Scenario: No se puede ubicar un barco en una posición ya ocupada
    Given un tablero de 5 x 5 y las coordenadas 1,2 1,3 ocupadas 
    When ubico el barco tipo crucero
    Then no se puede ubicar

@wip
   Scenario: No puedo ubicar mi barco en una posición fuera del tablero
     Given un tablero de 3 x 3 y las coordenadas 1,2 1,3 1,4 ocupadas 
     When ubico el barco tipo destructor
     Then no se puede ubicar