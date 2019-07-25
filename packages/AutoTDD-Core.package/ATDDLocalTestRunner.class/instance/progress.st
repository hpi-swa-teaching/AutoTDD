accessing
progress
	
	^ progress ifNil: [ progress := ValueHolder new contents: 0.0 ]