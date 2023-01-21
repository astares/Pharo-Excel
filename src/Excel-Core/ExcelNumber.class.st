"
A number representing limited Excel precision in Pharo
"
Class {
	#name : #ExcelNumber,
	#superclass : #Number,
	#instVars : [
		'storedValue',
		'numberOfDigits'
	],
	#classVars : [
		'MAX_DIGITS'
	],
	#category : 'Excel-Core-Numbers'
}

{ #category : #'private - initialization' }
ExcelNumber class >> initExcelPrecision [

	MAX_DIGITS := 15
]

{ #category : #'class initialization' }
ExcelNumber class >> initialize [
	"Initialize the receiver class"

	self initExcelPrecision
]

{ #category : #'instance creation' }
ExcelNumber class >> value: aNumber [

	^ self new
		  storedValue: aNumber;
		  yourself
]

{ #category : #arithmetic }
ExcelNumber >> * aNumber [
	^(self asInteger * aNumber) asExcelNumber
]

{ #category : #arithmetic }
ExcelNumber >> + aNumber [
	^(self asInteger + aNumber) asExcelNumber
]

{ #category : #arithmetic }
ExcelNumber >> - aNumber [
	^(self asInteger - aNumber) asExcelNumber
]

{ #category : #arithmetic }
ExcelNumber >> / aNumber [

	^ (self asInteger / aNumber) asExcelNumber
]

{ #category : #comparing }
ExcelNumber >> = anotherObject [

	^ self value = anotherObject value
]

{ #category : #converting }
ExcelNumber >> adaptToInteger: rcvr andSend: selector [
	"If I am involved in arithmetic with an Integer, convert it to a ScaledDecimal."

	^ rcvr perform: selector with: self value
]

{ #category : #converting }
ExcelNumber >> asFloat [

	^ self storedValue asFloat
]

{ #category : #converting }
ExcelNumber >> asInteger [

	^ self storedValue asInteger
]

{ #category : #'private - conversion' }
ExcelNumber >> coerce: aNumber [
	numberOfDigits := aNumber numberOfDigitsInBase: 10.
	numberOfDigits < MAX_DIGITS ifTrue: [ ^aNumber ].
	^(aNumber printString first: 15) asNumber
]

{ #category : #comparing }
ExcelNumber >> hash [

	^self value hash
]

{ #category : #testing }
ExcelNumber >> isZero [

	^ storedValue = 0
]

{ #category : #accessing }
ExcelNumber >> numberOfDigits [

	^ numberOfDigits
]

{ #category : #accessing }
ExcelNumber >> numberOfDigits: anObject [

	numberOfDigits := anObject
]

{ #category : #printing }
ExcelNumber >> printOn: aStream [

	aStream nextPutAll: self value asString
]

{ #category : #printing }
ExcelNumber >> printString [

	^ self printStringLimitedTo: 50000
]

{ #category : #accessing }
ExcelNumber >> storedValue [

	^ storedValue
]

{ #category : #accessing }
ExcelNumber >> storedValue: aNumber [

	storedValue := self coerce: aNumber
]

{ #category : #evaluating }
ExcelNumber >> value [

	numberOfDigits <= MAX_DIGITS ifTrue: [ ^ storedValue ].
	^ storedValue * (10 raisedTo: numberOfDigits - MAX_DIGITS)
]
