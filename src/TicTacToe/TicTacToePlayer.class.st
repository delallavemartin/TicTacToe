Class {
	#name : #TicTacToePlayer,
	#superclass : #Object,
	#instVars : [
		'aGame'
	],
	#classInstVars : [
		'aGame'
	],
	#category : #TicTacToe
}

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
	aGame set: aValue at: aSquarePosition
]
