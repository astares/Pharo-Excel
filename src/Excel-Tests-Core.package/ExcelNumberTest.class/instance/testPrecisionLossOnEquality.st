tests - excel like
testPrecisionLossOnEquality
	"Note that the last digit 6 and 7 is different but will not be considered as it is over the limit"
	
	|numberWith16DigitsAnd6AtTheEnd numberWith16DigitsAnd7AtTheEnd|
	numberWith16DigitsAnd6AtTheEnd := 1234567890123456 asExcelNumber.
	numberWith16DigitsAnd7AtTheEnd := 1234567890123457 asExcelNumber.
	
	"Although different they will be equal in Excel precision"
	self 
		assert: numberWith16DigitsAnd6AtTheEnd value = numberWith16DigitsAnd7AtTheEnd value;
		assert: numberWith16DigitsAnd6AtTheEnd = numberWith16DigitsAnd7AtTheEnd