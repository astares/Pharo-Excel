tests - basic
testInstanceCreationNegative
	|answer|
	answer := -42 asExcelNumber.
	self 
		assert: answer class equals: ExcelNumber;
		assert: answer storedValue equals: -42;
		assert: answer value equals: -42;
		assert: answer printString equals: '-42';
		assert: answer numberOfDigits equals: 2.