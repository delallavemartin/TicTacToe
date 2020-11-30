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
TicTacToeTest >> testBoardHasOneMoreOThanXThenIsInvalid [
	
	aBoard fillWith: 'O' at: #fifth.
	
	self deny: aBoard isValid .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testBoardHasOneXMoreThanOThenIsValid [
	
	aBoard fillWith: 'X' at: #fifth.
	
	self assert: aBoard isValid .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testBoardIsCreated [ 

	self assert: aBoard isFull .

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
TicTacToeTest >> testBoardSetsXandOAndIsValid [

	aBoard fillWith: 'X' at: #fifth.
	aBoard fillWith: 'O' at: #third .
	
	self assert: aBoard isValid .
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testGameEndedAndPlayerOneWins [
	
	aGame playerOnePlaysAt: #fifth .
	aGame playerTwoPlaysAt: #second .
	aGame playerOnePlaysAt: #third  .
	aGame playerTwoPlaysAt: #fourth  .
	aGame playerOnePlaysAt: #seventh .		
		
	self assert: aGame result equals: 'Player1'.
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testGameEndedAndPlayerTwoWins [
	
	aGame playerOnePlaysAt: #first .
	aGame playerTwoPlaysAt: #fifth .
	aGame playerOnePlaysAt: #fourth .
	aGame playerTwoPlaysAt: #third .
	aGame playerOnePlaysAt: #eighth .
	aGame playerTwoPlaysAt: #seventh .		
		
	self assert: aGame result equals: 'Player2'.
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testGameExecutePlayerOneAndPlayerTwoPlays [
	
	aGame playerOnePlaysAt: #fifth .
	aGame playerTwoPlaysAt: #third .
	
	self assert: (aGame has: 'X' on: #fifth ).
	self assert: (aGame has: 'O' on: #third ).
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testGameExecutePlayerOnePlay [
	
	aGame playerOnePlaysAt: #fifth .
	
	self assert: (aGame has: 'X' on: #fifth ).
	

]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testGameHasEndedDraw [
	
	aGame playerOnePlaysAt: #first .
	aGame playerTwoPlaysAt: #second .
	aGame playerOnePlaysAt: #third  .
	aGame playerTwoPlaysAt: #fourth  .
   aGame playerOnePlaysAt: #fifth .
	aGame playerTwoPlaysAt: #sixth .
	aGame playerOnePlaysAt: #seventh .
	aGame playerTwoPlaysAt: #eighth  .	
	aGame playerOnePlaysAt: #nineth  .			
		
	self assert: (aGame result) equals: 'Draw' .
	

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
TicTacToeTest >> testGameStartsWithBoardFullAndTwoPlayers [
	self assert: aGame boardIsFull . 
	self assert: aGame hasTwoPlayers .
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testSquareIsCreatedEmpty [
	
	self assert: anSquare notNil.
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testSquareWithExistantValueThenError [
	
	anSquare with: 'X'.
	
	self assert: [anSquare with: 'Y'.] expected: SquareAlreadyFilledException .
	
	
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testSquareWithInvalidValue [
	
	self assert: [anSquare with: 'S'.] expected: InvalidSquareValueException .
	
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testSquareWithO [

	anSquare with: 'O'.
	
	self assert: anSquare isO.
]

{ #category : #'as yet unclassified' }
TicTacToeTest >> testSquareWithX [

	anSquare with: 'X'.
	
	self assert: anSquare isX.
]
