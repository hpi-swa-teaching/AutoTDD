accessing
logFor: aNumber

	| logs |
	logs := self logs.
	^ logs at: aNumber ifAbsent: [
		logs at: aNumber put: (self client getTextForLog: aNumber)]