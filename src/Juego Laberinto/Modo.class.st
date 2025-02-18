"
Bicho con poco poder es perezoso con mucho poder es agresivo

"
Class {
	#name : 'Modo',
	#superclass : 'Object',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Modo >> actua: unBicho [
"template method"
 "self duerme."
self camina unBicho.
"self ataca"
]

{ #category : 'as yet unclassified' }
Modo >> camina:unBicho [
 "self subclassResponsibility"
" "

]

{ #category : 'consulta' }
Modo >> esAgresivo [ 
 ^false.
]

{ #category : 'consulta' }
Modo >> esPerezoso [ 
^false.
]
