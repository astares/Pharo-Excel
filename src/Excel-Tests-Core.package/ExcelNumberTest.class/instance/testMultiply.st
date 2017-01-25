tests - arithmetic
testMultiply

	self 
		assert: (3 asExcelNumber * 2) value equals: 6;
		assert: (2 * 3 asExcelNumber) value equals: 6