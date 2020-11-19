Class {
	#name : #TicTacToePlayer,
	#superclass : #Object,
	#instVars : [
		'aGame',
		'value'
	],
	#classInstVars : [
		'aGame'
	],
	#category : #TicTacToe
}

{ #category : #'as yet unclassified' }
TicTacToePlayer class >> represents: aValue [ 
	| aPlayer |
	aPlayer := TicTacToePlayer new.
	aPlayer value: aValue.
	^aPlayer
]

{ #category : #'as yet unclassified' }
TicTacToePlayer class >> with: aTicTacToeGame [ 
	| aTicTacToePlayer |
	aTicTacToePlayer := TicTacToePlayer new.
	aTicTacToePlayer playingAt: aTicTacToeGame .
	^aTicTacToePlayer
]

{ #category : #'as yet unclassified' }
TicTacToePlayer >> playingAt: aTicTacToeGame [
	aGame := aTicTacToeGame
]

{ #category : #'as yet unclassified' }
TicTacToePlayer >> plays: aValue to: aSquarePosition [ 
	aGame set: aValue at: aSquarePosition .
]

{ #category : #'as yet unclassified' }
TicTacToePlayer >> represents [
	^value .
]

{ #category : #'as yet unclassified' }
TicTacToePlayer >> value: aValue [ 
	value:=aValue.
]
