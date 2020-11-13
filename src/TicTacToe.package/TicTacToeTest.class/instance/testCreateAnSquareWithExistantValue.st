as yet unclassified
testCreateAnSquareWithExistantValue
	
	anSquare with: 'X'.
	
	self assert: [anSquare with: 'Y'.] expected: SquareAlreadyFilledException .
	
	