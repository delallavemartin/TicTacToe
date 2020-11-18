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

{ #category : #initialization }
Square >> initialize [
	value:=''
]

{ #category : #'as yet unclassified' }
Square >> is: aValue [ 
	^value = aValue
]

{ #category : #'var accessors' }
Square >> isO [
	^value = 'O'.
]

{ #category : #accessors }
Square >> isX [
	^value = 'X'.
]

{ #category : #setter }
Square >> with: aString [
	value ~= ''
		ifTrue: [ SquareAlreadyFilledException signal ].
	(aString = 'X' or: aString = 'O')
		ifTrue: [ value := aString ]
		ifFalse: [ InvalidSquareValueException signal ]
]
