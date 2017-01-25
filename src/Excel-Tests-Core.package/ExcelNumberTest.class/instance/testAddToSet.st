tests - basic
testAddToSet

	| set |
	set := Set with: 42 asExcelNumber with: 42 asExcelNumber.
	self assert: set size equals: 1
