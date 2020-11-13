as yet unclassified
create
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