action
hasVaildRefreshInterval
	^ refreshInterval contents asString isAllDigits and: [refreshInterval contents asString isEmpty not]