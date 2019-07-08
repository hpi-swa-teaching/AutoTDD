accessing
status
	^ status ifNil: [status := ValueHolder new contents: self repository status]