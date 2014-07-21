as yet unclassified
wrapAsJson: aLog

	^ JsonObject new
		at: 'log' put: (JsonObject new
			at: 'body' put: aLog;
			yourself);
		yourself