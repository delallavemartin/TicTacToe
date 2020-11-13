setter
with: aString 
	value notNil ifTrue: [SquareAlreadyFilledException  signal. ].
   (aString = 'X' or: aString = 'Y')
	ifTrue:[value := aString]
	ifFalse:[InvalidSquareValueException signal.]
	