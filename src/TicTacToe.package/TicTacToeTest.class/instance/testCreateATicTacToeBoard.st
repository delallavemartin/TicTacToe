as yet unclassified
testCreateATicTacToeBoard 
	
	self assert: ((aBoard squareAt: #first) class) equals: Square.
	self assert: ((aBoard squareAt: #second) class) equals: Square.
	self assert: ((aBoard squareAt: #third) class) equals: Square.
	self assert: ((aBoard squareAt: #fourth ) class) equals: Square.
	self assert: ((aBoard squareAt: #fifth) class) equals: Square.
	self assert: ((aBoard squareAt: #sixth) class) equals: Square.
	self assert: ((aBoard squareAt: #seventh ) class) equals: Square.
	self assert: ((aBoard squareAt: #eighth ) class) equals: Square.
	self assert: ((aBoard squareAt: #nineth ) class) equals: Square.
