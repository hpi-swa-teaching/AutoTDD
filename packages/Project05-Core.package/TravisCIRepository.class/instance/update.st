as yet unclassified
update

	self
		clearCache;
		notify.
	Transcript show: 'foo'; crlf.
	self timer terminate.
	self initializeTimer