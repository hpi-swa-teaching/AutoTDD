accessing
pausedStatus
	^ pausedStatus ifNil: [pausedStatus := ValueHolder new contents: self pausedString]