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
Game class >> board [
	^aBoard
]

{ #category : #'as yet unclassified' }
Game class >> hasValidBoard [
	^false
]

{ #category : #'as yet unclassified' }
Game class >> start [
	aBoard := TicTacToeBoard create.
]
