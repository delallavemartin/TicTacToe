Class {
	#name : #Game,
	#superclass : #Object,
	#instVars : [
		'aBoard'
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
Game >> hasValidBoard [
	^false
]

{ #category : #'as yet unclassified' }
Game >> hasValidState [
	^aBoard areTotalXsEqualsOrOneMoreThanOs.
]

{ #category : #'as yet unclassified' }
Game >> set: aValue at: anSquarePosition [ 
	aBoard fillWith: aValue at: anSquarePosition
]

{ #category : #'as yet unclassified' }
Game >> with: aTicTacToeBoard [ 
	aBoard := aTicTacToeBoard 
]
