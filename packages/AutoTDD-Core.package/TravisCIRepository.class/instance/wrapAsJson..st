as yet unclassified
wrapAsJson: aLog

	| json |
	json := JsonObject new.
	json at: 'log' put: JsonObject new.
	(json at: 'log') at: 'body' put: aLog.
	^ json