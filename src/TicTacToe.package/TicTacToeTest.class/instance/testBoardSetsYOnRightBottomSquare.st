as yet unclassified
testBoardSetsYOnRightBottomSquare
	
	aBoard fillWith: 'Y' at: #nineth .
	
	self assert: (aBoard squareAt: #nineth) isY .
	
