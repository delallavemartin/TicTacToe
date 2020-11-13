Class {
	#name : #Square,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #TicTacToe
}

{ #category : #accessors }
Square >> isX [
	^value = 'X'.
]

{ #category : #'var accessors' }
Square >> isY [
	^self isX not.
]

{ #category : #setter }
Square >> with: aString [ 
	value notNil ifTrue: [SquareAlreadyFilledException  signal. ].
   (aString = 'X' or: aString = 'Y')
	ifTrue:[value := aString]
	ifFalse:[InvalidSquareValueException signal.]
	
]
