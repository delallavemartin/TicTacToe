as yet unclassified
testBoardSetsXOnCenter
	
	aBoard fillWith: 'X' at: #fifth.
	
	self assert: (aBoard squareAt: #fifth) isX .
	
