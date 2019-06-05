accessing
refreshInterval
	^ refreshInterval ifNil: [refreshInterval := (Time hour: 0 minute: 0 second: 20) asSeconds]