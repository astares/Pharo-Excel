tests - basic
testFloatConversion
	|answer|
	answer := 42 asExcelNumber.
	self
		assert: answer asFloat equals: 42.0