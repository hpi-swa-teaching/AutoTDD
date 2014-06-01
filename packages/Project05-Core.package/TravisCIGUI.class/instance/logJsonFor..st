accessing
logJsonFor: aNumber

	| logs |
	logs := self logsDictionary.
	^ logs at: aNumber ifAbsent: [
		logs at: aNumber put: (self client getTextForLog: aNumber)]