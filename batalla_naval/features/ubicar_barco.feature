Feature: Como usuario quiero ubicar mis barcos

  Scenario: Ubico mi barco exitosamente
    Given la coordenada 3,2 vacia 
    When ubico el barco tipo submarino
    Then ubicado exitosamente	


  Scenario: No se puede ubicar un barco en una posición ya ocupada
    Given la coordenadas 1,2 ocupada 
    When ubico el barco tipo crucero en la coordenada 1,2 vertical
    Then no se puede ubicar


   Scenario: No puedo ubicar mi barco en una posición fuera del tablero
     Given la coordenada 50,50 
     When ubico el barco tipo submarino en esa coordenada dada
     Then fuera del tablero
