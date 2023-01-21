tests - zero
testIsZero

	self
		assert: 0 asExcelNumber isZero;
		deny: 42 asExcelNumber isZero