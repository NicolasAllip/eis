Feature: Como usuario quiero disparar a los barcos enemigos

Scenario: Disparo y toco agua
    
  Given la coordenada 5,5 esta vacia
  When disparo a esa coordenada
  Then la coordenada 5,5 es agua

Scenario: Disparo y toco un barco pero no lo hundo
  
  Given la coordenada 5,2 esta ocupada por un crucero
  When disparo a la coordenada dada
  Then daño una parte del barco tipo crucero pero no lo hundo

Scenario: Disparo y toco un barco y lo hundo
  
  Given la coordenada 10,10 ocupada por un submarino
  When disparo a la coordenada
  Then hundo un barco de tipo submarino
