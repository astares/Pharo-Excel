private - conversion
coerce: aNumber
	numberOfDigits := aNumber numberOfDigitsInBase: 10.
	numberOfDigits < MAX_DIGITS ifTrue: [ ^aNumber ].
	^(aNumber printString first: 15) asNumber