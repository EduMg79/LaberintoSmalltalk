"
agresivo, mas poder
"
Class {
	#name : 'Agresivo',
	#superclass : 'Modo',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Agresivo >> dormir:unBicho [
	Transcript show:unBicho printString ; nextPutAll: ' duerme';cr.
   (Delay forSeconds: 1) wait.

]

{ #category : 'consulta' }
Agresivo >> esAgresivo [ 
 ^true.
]
