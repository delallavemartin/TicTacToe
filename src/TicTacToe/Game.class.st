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
	aGame board: TicTacToeBoard create playerOne: 'X' andPlayer: 'O' .
	^aGame
]

{ #category : #'as yet unclassified' }
Game >> board [
	^aBoard
]

{ #category : #'as yet unclassified' }
Game >> board: aTicTacToeBoard playerOne: aValue1 andPlayer: aValue2 [
	aBoard := aTicTacToeBoard.
	playerOne := TicTacToePlayer represents: aValue1.
	playerTwo := TicTacToePlayer represents: aValue2.
	^self
]

{ #category : #'as yet unclassified' }
Game >> boardIsFull [
	^ self board isFull
]

{ #category : #'as yet unclassified' }
Game >> has: aValue on: anSquarePosition [  
	^(aBoard squareAt: anSquarePosition) is: aValue
]

{ #category : #'as yet unclassified' }
Game >> hasTwoPlayers [
	^playerOne isNotNil & playerTwo isNotNil .
]

{ #category : #'as yet unclassified' }
Game >> hasValidState [
	^aBoard isValid.
]

{ #category : #'as yet unclassified' }
Game >> playerOnePlaysAt: anSquarePosition [ 
	self set: playerOne represents at: anSquarePosition .
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
