"
Orientacion sur

"
Class {
	#name : 'Sur',
	#superclass : 'Orientacion',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'gestion orientaciones' }
Sur >> obtenerElementoOrEn: unContenedor [
^unContenedor sur.
]

{ #category : 'gestion orientaciones' }
Sur >> ponerElemento:unEm en:unContenedor [
  unContenedor sur:unEm.
]

{ #category : 'recorrido' }
Sur >> recorrer: unBloque contenedor:unContenedor [
unContenedor sur recorrer:unBloque.
]
