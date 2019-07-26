accessing
selectedHistory: aHistory
	
	selectedHistory := aHistory.
	self
		changed: #selectedHistory;
		historyChanged