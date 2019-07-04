accessing
selectedHistory: anObject
	selectedHistory := anObject.
	self
		changed: #selectedHistory;
		historyChanged