tests - arithmetic
testDivide

	self 
		assert: (6 asExcelNumber / 3) value equals: 2;
		assert: (6 / 3 asExcelNumber) value equals: 2 