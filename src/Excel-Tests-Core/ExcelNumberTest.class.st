"
A unit test for ExcelNumber
"
Class {
	#name : #ExcelNumberTest,
	#superclass : #TestCase,
	#category : 'Excel-Tests-Core-Numbers'
}

{ #category : #'tests - basic' }
ExcelNumberTest >> test15Digits [
	|answer|
	answer := 123456789012345 asExcelNumber.
	self
		assert: answer class equals: ExcelNumber;
		assert: answer storedValue equals: 123456789012345;
		assert: answer value equals: 123456789012345;
		assert: answer printString equals: '123456789012345';
		assert: answer numberOfDigits equals: 15
]

{ #category : #'tests - basic' }
ExcelNumberTest >> test16Digits [
	|answer|
	answer := 1234567890123456 asExcelNumber.
	self
		assert: answer class equals: ExcelNumber;
		assert: answer storedValue equals: 123456789012345;
		assert: answer value equals: 1234567890123450;
		assert: answer printString equals: '1234567890123450';
		assert: answer numberOfDigits equals: 16
]

{ #category : #'tests - basic' }
ExcelNumberTest >> testAddToSet [

	| set |
	set := Set with: 42 asExcelNumber with: 42 asExcelNumber.
	self assert: set size equals: 1
]

{ #category : #'tests - arithmetic' }
ExcelNumberTest >> testDivide [

	self
		assert: (6 asExcelNumber / 3) value equals: 2;
		assert: (6 / 3 asExcelNumber) value equals: 2
]

{ #category : #'tests - comparision' }
ExcelNumberTest >> testEquality [

	self
		assert: 1 asExcelNumber equals: 1;
		assert: 1 equals: 1 asExcelNumber
]

{ #category : #'tests - basic' }
ExcelNumberTest >> testFloatConversion [
	|answer|
	answer := 42 asExcelNumber.
	self
		assert: answer asFloat equals: 42.0
]

{ #category : #'tests - basic' }
ExcelNumberTest >> testHash [

	self assert: 42 asExcelNumber hash identicalTo: 42 asExcelNumber hash
]

{ #category : #'tests - basic' }
ExcelNumberTest >> testInstanceCreation [
	|answer|
	answer := 42 asExcelNumber.
	self
		assert: answer class equals: ExcelNumber;
		assert: answer storedValue equals: 42;
		assert: answer value equals: 42;
		assert: answer printString equals: '42';
		assert: answer numberOfDigits equals: 2
]

{ #category : #'tests - basic' }
ExcelNumberTest >> testInstanceCreationNegative [
	|answer|
	answer := -42 asExcelNumber.
	self
		assert: answer class equals: ExcelNumber;
		assert: answer storedValue equals: -42;
		assert: answer value equals: -42;
		assert: answer printString equals: '-42';
		assert: answer numberOfDigits equals: 2
]

{ #category : #'tests - zero' }
ExcelNumberTest >> testIsZero [

	self
		assert: 0 asExcelNumber isZero;
		deny: 42 asExcelNumber isZero
]

{ #category : #'tests - arithmetic' }
ExcelNumberTest >> testMinus [

	self
		assert: (3 asExcelNumber - 2) value equals: 1;
		assert: (3 - 2 asExcelNumber) value equals: 1
]

{ #category : #'tests - arithmetic' }
ExcelNumberTest >> testMultiply [

	self
		assert: (3 asExcelNumber * 2) value equals: 6;
		assert: (2 * 3 asExcelNumber) value equals: 6
]

{ #category : #'tests - excel like' }
ExcelNumberTest >> testPrecisionLossOnEquality [
	"Note that the last digit 6 and 7 is different but will not be considered as it is over the limit"

	|numberWith16DigitsAnd6AtTheEnd numberWith16DigitsAnd7AtTheEnd|
	numberWith16DigitsAnd6AtTheEnd := 1234567890123456 asExcelNumber.
	numberWith16DigitsAnd7AtTheEnd := 1234567890123457 asExcelNumber.

	"Although different they will be equal in Excel precision"
	self
		assert: numberWith16DigitsAnd6AtTheEnd value equals: numberWith16DigitsAnd7AtTheEnd value;
		assert: numberWith16DigitsAnd6AtTheEnd equals: numberWith16DigitsAnd7AtTheEnd
]

{ #category : #'tests - arithmetic' }
ExcelNumberTest >> testSum [

	self
		assert: (1 asExcelNumber + 2) value equals: 3;
		assert: (2 asExcelNumber + 1) value equals: 3
]

{ #category : #'tests - zero' }
ExcelNumberTest >> testZero [
	|answer|
	answer := 0 asExcelNumber.
	self
		assert: answer class equals: ExcelNumber;
		assert: answer storedValue equals: 0;
		assert: answer value equals: 0;
		assert: answer printString equals: '0';
		assert: answer numberOfDigits equals: 1
]
