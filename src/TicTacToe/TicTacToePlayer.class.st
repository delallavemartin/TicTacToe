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
	aPlayer := self new.
	aPlayer value: aValue.
	^aPlayer
]

{ #category : #'as yet unclassified' }
TicTacToePlayer >> represents [
	^value .
]

{ #category : #'as yet unclassified' }
TicTacToePlayer >> value: aValue [ 
	value:=aValue.
]
