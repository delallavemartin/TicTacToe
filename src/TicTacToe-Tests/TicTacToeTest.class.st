Class {
	#name : #TicTacToeTest,
	#superclass : #TestCase,
	#instVars : [
		'anSquare',
		'aBoard',
		'aGame'
	],
	#category : #'TicTacToe-Tests'
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
	aGame := Game start.

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testBoardSetsOOnRightBottomSquare [
	
	aBoard fillWith: 'O' at: #nineth .
	
	self assert: (aBoard squareAt: #nineth) isO .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testBoardSetsXOnCenter [
	
	aBoard fillWith: 'X' at: #fifth.
	
	self assert: (aBoard squareAt: #fifth) isX .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testCreateATicTacToeBoard [ 

	self assert: aBoard isFull .

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
TicTacToeTest >> testCreateAnSquareWithO [

	anSquare with: 'O'.
	
	self assert: anSquare isO.
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testCreateAnSquareWithX [

	anSquare with: 'X'.
	
	self assert: anSquare isX.
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testGameSetAnOOnFifthSquareAndTheBoardIsInInvalidStateThenRollbackAndThrowException [

	self assert: [aGame set: 'O' at: #fifth ] expected: InvalidStateException.
	self deny: ( aGame has: 'O' on: #fifth ).
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testGameSetAnXInFifthSquareAndTheBoardIsInValidState [

	aGame set: 'X' at: #fifth .
	self assert: ( aGame has: 'X' on: #fifth ).
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testGameStartsAndIsValid [
	
	self assert: aGame hasValidState .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testPlayerOneSetAnXOnFifthSquare [
	
	| playerOne |
	playerOne := TicTacToePlayer with: aGame.
	
	playerOne plays: 'X' to: #fifth .
	
	self assert: (aGame has: 'X' on: #fifth ).
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testWhenBoardHasOneMoreOThanXThenIsInvalid [
	
	aBoard fillWith: 'O' at: #fifth.
	
	self deny: aBoard isValid .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testWhenBoardHasOneXMoreThanOThenIsValid [
	
	aBoard fillWith: 'X' at: #fifth.
	
	self assert: aBoard isValid .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testWhenBothHavePlayOneTimeThenIsValid [

	aBoard fillWith: 'X' at: #fifth.
	aBoard fillWith: 'O' at: #third .
	
	self assert: aBoard isValid .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testWhenGameStartsTheBoardIsFull [
	
	self assert: aGame board isFull .
	

]
