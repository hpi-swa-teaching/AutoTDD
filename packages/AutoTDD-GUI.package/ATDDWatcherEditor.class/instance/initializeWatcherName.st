initialization
initializeWatcherName
	watcherName := ValueHolder new contents: ''.
	watcherName addDependent: self