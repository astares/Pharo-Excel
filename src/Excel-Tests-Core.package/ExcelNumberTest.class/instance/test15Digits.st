tests - basic
test15Digits
	|answer|
	answer := 123456789012345 asExcelNumber.
	self
		assert: answer class equals: ExcelNumber;
		assert: answer storedValue equals: 123456789012345;
		assert: answer value equals: 123456789012345;
		assert: answer printString equals: '123456789012345';
		assert: answer numberOfDigits equals: 15