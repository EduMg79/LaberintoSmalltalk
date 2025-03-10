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
 "self dormir: unBicho".
self caminar: unBicho.
self atacar:unBicho .
]

{ #category : 'as yet unclassified' }
Modo >> atacar:unBicho [
 unBicho atacar.
]

{ #category : 'as yet unclassified' }
Modo >> caminar:unBicho [
|or|
"obtener posicion"
"elegir una orientacion aleatoria"
"caminar hacia esa orientacion"
or:= unBicho obtenerOrientacion.
or caminar:unBicho .
""
" "

]

{ #category : 'as yet unclassified' }
Modo >> dormir: unBicho [
self subclassResponsibility .
]

{ #category : 'consulta' }
Modo >> esAgresivo [ 
 ^false.
]

{ #category : 'consulta' }
Modo >> esPerezoso [ 
^false.
]
