tests - basic
test16Digits
	|answer|
	answer := 1234567890123456 asExcelNumber.
	self
		assert: answer class equals: ExcelNumber;
		assert: answer storedValue equals: 123456789012345;
		assert: answer value equals: 1234567890123450;
		assert: answer printString equals: '1234567890123450';
		assert: answer numberOfDigits equals: 16