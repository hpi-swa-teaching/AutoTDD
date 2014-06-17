observation
deattach: anObserver

	self observers remove: anObserver.
	self observers ifEmpty: [ self delete ]