"
Orientacion este

"
Class {
	#name : 'Este',
	#superclass : 'Orientacion',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'gestion orientaciones' }
Este >> caminar:unBicho [ 
|pos|
pos :=unBicho posicion .
pos este entrar:unBicho .

]

{ #category : 'gestion orientaciones' }
Este >> obtenerElementoOrEn: unContenedor [
^unContenedor este.

]

{ #category : 'gestion orientaciones' }
Este >> ponerElemento:unEm en:unContenedor [
  unContenedor este:unEm.
]

{ #category : 'recorrido' }
Este >> recorrer: unBloque contenedor:unContenedor [
unContenedor este recorrer:unBloque.
]
