Class {
	#name : #TicTacToeBoard,
	#superclass : #Object,
	#instVars : [
		'squares'
	],
	#classInstVars : [
		'aGrid'
	],
	#category : #TicTacToe
}

{ #category : #'as yet unclassified' }
TicTacToeBoard class >> create [
	| aTicTacToeBoard |
	aTicTacToeBoard := self new.
	aGrid := Dictionary new.
	aGrid at:#first put: Square new.
	aGrid at:#second put: Square new.
	aGrid at:#third put: Square new.
	aGrid at:#fourth  put: Square new.
	aGrid at:#fifth put: Square new.
	aGrid at:#sixth put: Square new.
	aGrid at:#seventh  put: Square new.
	aGrid at:#eighth  put: Square new.
   aGrid at:#nineth put: Square new.	
	aTicTacToeBoard build: aGrid.
	^aTicTacToeBoard.
]

{ #category : #'as yet unclassified' }
TicTacToeBoard >> build: aCollection [ 
	squares := aCollection
]

{ #category : #'as yet unclassified' }
TicTacToeBoard >> fillWith: aValue at: aKey [
	(self squareAt: aKey) with: aValue.
]

{ #category : #'as yet unclassified' }
TicTacToeBoard >> squareAt: aKey [
	^squares at: aKey.
]
