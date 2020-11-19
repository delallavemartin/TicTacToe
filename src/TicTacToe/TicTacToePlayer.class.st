Class {
	#name : #TicTacToePlayer,
	#superclass : #Object,
	#instVars : [
		'aGame',
		'value'
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
	aTicTacToePlayer := self new.
	aTicTacToePlayer playingAt: aTicTacToeGame .
	^aTicTacToePlayer
]

{ #category : #'as yet unclassified' }
TicTacToePlayer >> represents [
	^value .
]

{ #category : #'as yet unclassified' }
TicTacToePlayer >> value: aValue [ 
	value:=aValue.
]
