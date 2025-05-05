Class {
	#name : 'LaberintoGui',
	#superclass : 'BorderedMorph',
	#instVars : [
		'juego',
		'win',
		'person',
		'ancho',
		'alto',
		'vidasM',
		'mAP',
		'mCP',
		'mLB',
		'personM',
		'bichosM'
	],
	#category : 'Juego Laberinto-Vista',
	#package : 'Juego Laberinto',
	#tag : 'Vista'
}

{ #category : 'accessing' }
LaberintoGui >> alto [

	^ alto
]

{ #category : 'accessing' }
LaberintoGui >> alto: anObject [

	alto := anObject
]

{ #category : 'accessing' }
LaberintoGui >> ancho [

	^ ancho
]

{ #category : 'accessing' }
LaberintoGui >> ancho: anObject [

	ancho := anObject
]

{ #category : 'accessing' }
LaberintoGui >> bichosM [

	^ bichosM
]

{ #category : 'accessing' }
LaberintoGui >> bichosM: anObject [

	bichosM := anObject
]

{ #category : 'as yet unclassified' }
LaberintoGui >> calcularPosicion [
|h1|
	self juego ifNil:[	^self].
	h1:=self juego obtenerHabitacion:1.
	h1 punto:0@0.	
	h1 calcularPosicion.



]

{ #category : 'as yet unclassified' }
LaberintoGui >> iniciarJuego [
	|director|
		director:=Director new procesar:'C:\Users\Usuario\Desktop\3º\laberinto4hab4bichos.json'.
		self juego:director obtenerJuego.
		self mostrarLaberinto.
		win:=self openInWindowLabeled:'LaberintoGUI'.
		self agregarPersonaje:'Pepín'. "el nombre se podría introducir desde la interfaz"
		self dibujarLaberinto.

]

{ #category : 'accessing' }
LaberintoGui >> juego [

	^ juego
]

{ #category : 'accessing' }
LaberintoGui >> juego: anObject [

	juego := anObject
]

{ #category : 'accessing' }
LaberintoGui >> mAP [

	^ mAP
]

{ #category : 'accessing' }
LaberintoGui >> mAP: anObject [

	mAP := anObject
]

{ #category : 'accessing' }
LaberintoGui >> mCP [

	^ mCP
]

{ #category : 'accessing' }
LaberintoGui >> mCP: anObject [

	mCP := anObject
]

{ #category : 'accessing' }
LaberintoGui >> mLB [

	^ mLB
]

{ #category : 'accessing' }
LaberintoGui >> mLB: anObject [

	mLB := anObject
]

{ #category : 'as yet unclassified' }
LaberintoGui >> mostrarLaberinto [
	self calcularPosicion. "calcula la posición relativa de las habitaciones respecto de la hab1"
	self normalizar. "traslación de todo el laberinto para que no haya coordenadas negativas"
	self calcularDimensiones. "repartir el ancho y alto del canvas entre las habitaciones"
	self asignarPuntosReales. "asigna las posiciones a cada contenedor (forma)"

]

{ #category : 'accessing' }
LaberintoGui >> person [

	^ person
]

{ #category : 'accessing' }
LaberintoGui >> person: anObject [

	person := anObject
]

{ #category : 'accessing' }
LaberintoGui >> personM [

	^ personM
]

{ #category : 'accessing' }
LaberintoGui >> personM: anObject [

	personM := anObject
]

{ #category : 'accessing' }
LaberintoGui >> vidasM [

	^ vidasM
]

{ #category : 'accessing' }
LaberintoGui >> vidasM: anObject [

	vidasM := anObject
]

{ #category : 'accessing' }
LaberintoGui >> win [

	^ win
]

{ #category : 'accessing' }
LaberintoGui >> win: anObject [

	win := anObject
]
