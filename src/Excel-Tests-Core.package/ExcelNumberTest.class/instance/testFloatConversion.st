tests - basic
testFloatConversion
	|answer|
	answer := 42 asExcelNumber.	
	self 
		assert: answer asFloat = 42.0