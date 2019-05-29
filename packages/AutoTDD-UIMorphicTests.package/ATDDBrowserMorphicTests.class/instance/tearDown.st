running
tearDown
	browser watchers removeAll.
	browser watchers addAll: preTestWatchers.
	browser changed: #close.
