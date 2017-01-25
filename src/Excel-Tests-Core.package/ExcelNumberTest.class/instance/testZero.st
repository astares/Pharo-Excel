tests - zero
testZero
	|answer|
	answer := 0 asExcelNumber.	
	self 
		assert: answer class equals: ExcelNumber;
		assert: answer storedValue equals: 0;
		assert: answer value equals: 0;
		assert: answer printString equals: '0';
		assert: answer numberOfDigits equals: 1.