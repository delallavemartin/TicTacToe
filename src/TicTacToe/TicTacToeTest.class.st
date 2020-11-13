Class {
	#name : #TicTacToeTest,
	#superclass : #TestCase,
	#instVars : [
		'anSquare',
		'aBoard'
	],
	#category : 'TicTacToe'
}

{ #category : #'as yet unclassified' }
TicTacToeTest >> assert: aBlock expected: anException [
	aBlock on: anException do: [^self assert: true.].
	^self assert: false.
	
	
]

{ #category : #running }
TicTacToeTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	
	anSquare := Square new.
	aBoard := TicTacToeBoard create.

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testBoardSetsXOnCenter [
	
	aBoard fillWith: 'X' at: #fifth.
	
	self assert: (aBoard squareAt: #fifth) isX .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testBoardSetsYOnRightBottomSquare [
	
	aBoard fillWith: 'Y' at: #nineth .
	
	self assert: (aBoard squareAt: #nineth) isY .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testCreateATicTacToeBoard [ 
	
	self assert: ((aBoard squareAt: #first) class) equals: Square.
	self assert: ((aBoard squareAt: #second) class) equals: Square.
	self assert: ((aBoard squareAt: #third) class) equals: Square.
	self assert: ((aBoard squareAt: #fourth ) class) equals: Square.
	self assert: ((aBoard squareAt: #fifth) class) equals: Square.
	self assert: ((aBoard squareAt: #sixth) class) equals: Square.
	self assert: ((aBoard squareAt: #seventh ) class) equals: Square.
	self assert: ((aBoard squareAt: #eighth ) class) equals: Square.
	self assert: ((aBoard squareAt: #nineth ) class) equals: Square.

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testCreateAnEmptySquare [
	
	self assert: anSquare notNil.
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testCreateAnSquareWithExistantValue [
	
	anSquare with: 'X'.
	
	self assert: [anSquare with: 'Y'.] expected: SquareAlreadyFilledException .
	
	
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testCreateAnSquareWithInvalidValue [
	
	self assert: [anSquare with: 'S'.] expected: InvalidSquareValueException .
	
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testCreateAnSquareWithX [

	anSquare with: 'X'.
	
	self assert: anSquare isX.
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testCreateAnSquareWithY [

	anSquare with: 'Y'.
	
	self assert: anSquare isY.
]
