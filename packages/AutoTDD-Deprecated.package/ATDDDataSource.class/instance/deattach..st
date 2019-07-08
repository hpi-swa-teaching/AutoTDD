observing
deattach: anObserver

	self observers
		remove: anObserver;
		ifEmpty: [ self delete ]