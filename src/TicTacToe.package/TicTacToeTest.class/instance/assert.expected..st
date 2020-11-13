as yet unclassified
assert: aBlock expected: anException
	aBlock on: anException do: [^self assert: true.].
	^self assert: false.
	
	