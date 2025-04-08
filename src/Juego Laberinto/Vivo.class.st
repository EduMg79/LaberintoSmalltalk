Class {
	#name : 'Vivo',
	#superclass : 'EstadoEnte',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Vivo >> actua:unBicho [
 unBicho puedeActuar .
]

{ #category : 'as yet unclassified' }
Vivo >> atacar:alguien [
   alguien puedeAtacar .
]
