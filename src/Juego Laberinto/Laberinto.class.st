"
clase principal de Laberinto

"
Class {
	#name : 'Laberinto',
	#superclass : 'Contenedor',
	#category : 'Juego Laberinto-Laberinto',
	#package : 'Juego Laberinto',
	#tag : 'Laberinto'
}

{ #category : 'as yet unclassified' }
Laberinto >> abrirPuertas [ 
self recorrer: [:each | each esPuerta ifTrue: [ each abrir ]] .
]

{ #category : 'habitaciones' }
Laberinto >> agregarHabitacion:unaHabitacion [

	self hijos add:unaHabitacion
]

{ #category : 'as yet unclassified' }
Laberinto >> cerrarPuertas [ 
self recorrer: [:each | each esPuerta ifTrue: [ each cerrar ]] .
]

{ #category : 'habitaciones' }
Laberinto >> eliminarHabitacion:unaHabitacion [
	self hijos remove:unaHabitacion ifAbsent:["no existe ese objeto habitacion"]
]

{ #category : 'entrar' }
Laberinto >> entrar:alguien [
 |hab1|
hab1:=self obtenerHabitacion:1.
hab1 entrar:alguien.


 
]

{ #category : 'consulta' }
Laberinto >> esLaberinto [ 
^true.
]

{ #category : 'habitaciones' }
Laberinto >> obtenerHabitacion: unNum [
 ^self hijos detect:[:each | each num = unNum] ifNone: [ nil ].
]

{ #category : 'recorrido' }
Laberinto >> recorrer: unBloque [
 unBloque value:self.
self hijos do: [ :each | each recorrer:unBloque ].
]
