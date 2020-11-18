Class {
	#name : #Game,
	#superclass : #Object,
	#instVars : [
		'aBoard',
		'playerOne',
		'playerTwo'
	],
	#classInstVars : [
		'aBoard'
	],
	#category : #TicTacToe
}

{ #category : #'as yet unclassified' }
Game class >> start [
	| aGame |
	aGame := self new.
	aGame with: TicTacToeBoard create.
	^aGame
]

{ #category : #'as yet unclassified' }
Game >> board [
	^aBoard
]

{ #category : #'as yet unclassified' }
Game >> has: aValue on: anSquarePosition [  
	^(aBoard squareAt: anSquarePosition) is: aValue
]

{ #category : #'as yet unclassified' }
Game >> hasValidState [
	^aBoard isValid.
]

{ #category : #'as yet unclassified' }
Game >> set: aValue at: anSquarePosition [ 
	aBoard fillWith: aValue at: anSquarePosition.
	(aBoard isValid) ifTrue: [ ^self ] .
	"Rollback play & throw exception"
	aBoard clearAt: anSquarePosition.
	InvalidStateException  signal 
]

{ #category : #'as yet unclassified' }
Game >> with: aTicTacToeBoard [ 
	aBoard := aTicTacToeBoard 
]
