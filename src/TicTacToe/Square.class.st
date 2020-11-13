"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part: ""I represent an Square on the TicTacToeBoard"".

For the Responsibility part: I know if an 'X' or an 'O' was set in the 

For the Collaborators Part: 

- isX  
- isY
- Factory method, with: 

	Example 
   anSquare with: 'X'
 
Internal Representation and Key Implementation Points.

   Instance Variables
	value:		String

"
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
