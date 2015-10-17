Feature: Como usuario quiero disparar a los barcos enemigos

Scenario: Disparo y toco agua
    
  Given la coordenada 5,5 vacia
  When disparo a esa coordenada dada
  Then la coordenada 5,5 es agua

@wip
Scenario: Disparo y toco un barco pero no lo hundo
  
  Given la coordenadas 1,2 ocupada 
  When disparo a esa coordenada dada
  Then daño una parte del barco tipo crucero pero no lo hundo

@wip
Scenario: Disparo y toco un barco y lo hundo
  
  Given la coordenada 10,10 ocupada
  When disparo a esa coordenada dada
  Then hundo un barco de tipo submarino
