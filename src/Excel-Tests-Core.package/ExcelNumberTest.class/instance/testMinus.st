tests - arithmetic
testMinus

	self 
		assert: (3 asExcelNumber - 2) value equals: 1;
		assert: (3 - 2 asExcelNumber) value equals: 1