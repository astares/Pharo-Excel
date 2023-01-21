evaluating
value

	numberOfDigits <= MAX_DIGITS ifTrue: [ ^ storedValue ].
	^ storedValue * (10 raisedTo: numberOfDigits - MAX_DIGITS)