as yet unclassified
testCreateAnSquareWithInvalidValue
	
	self assert: [anSquare with: 'S'.] expected: InvalidSquareValueException .
	