converting
adaptToInteger: rcvr andSend: selector
	"If I am involved in arithmetic with an Integer, convert it to a ScaledDecimal."

	^ rcvr perform: selector with: self value