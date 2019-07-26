accessing
refreshInterval
	
	^ refreshInterval ifNil: [ refreshInterval := self class defaultRefreshInterval ]