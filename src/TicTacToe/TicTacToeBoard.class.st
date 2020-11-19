Class {
	#name : #TicTacToeBoard,
	#superclass : #Object,
	#instVars : [
		'squares'
	],
	#category : #TicTacToe
}

{ #category : #'as yet unclassified' }
TicTacToeBoard class >> create [
	| aTicTacToeBoard aGrid |
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
TicTacToeBoard >> clearAt: anSquarePostion [ 
	(self squareAt:  anSquarePostion) clear.
]

{ #category : #'as yet unclassified' }
TicTacToeBoard >> fillWith: aValue at: aKey [
	(self squareAt: aKey) with: aValue.
]

{ #category : #'as yet unclassified' }
TicTacToeBoard >> isFull [
	^(((self squareAt: #first) class) = Square )|
	(((self squareAt: #second) class) = Square )|
	(((self squareAt: #third) class) = Square )|
	(((self squareAt: #fourth ) class) = Square )|
	(((self squareAt: #fifth) class) = Square )|
	(((self squareAt: #sixth) class) = Square )|
	(((self squareAt: #seventh ) class) = Square) |
	(((self squareAt: #eighth ) class) = Square )|
	(((self squareAt: #nineth ) class) = Square).
]

{ #category : #'as yet unclassified' }
TicTacToeBoard >> isValid [
	| xsCounts osCounts |
	xsCounts := (squares select: [ :anSquare | anSquare isX ]) size.
	osCounts := (squares select: [ :anSquare | anSquare isO ]) size.
	
	^xsCounts = osCounts or: xsCounts = (osCounts + 1)
]

{ #category : #'as yet unclassified' }
TicTacToeBoard >> squareAt: aKey [
	^squares at: aKey.
]
