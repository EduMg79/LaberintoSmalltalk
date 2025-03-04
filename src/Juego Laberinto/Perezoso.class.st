"
perezoso, menos poder
"
Class {
	#name : 'Perezoso',
	#superclass : 'Modo',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Perezoso >> dormir:unBicho [
	Transcript show:unBicho printString ; nextPutAll: ' duerme';cr.
   (Delay forSeconds: 3) wait.
]

{ #category : 'consulta' }
Perezoso >> esPerezoso [ 
 ^true.
]
