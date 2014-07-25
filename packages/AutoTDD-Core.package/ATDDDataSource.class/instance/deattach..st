as yet unclassified
deattach: anObserver

	self observers
		remove: anObserver;
		ifEmpty: [ self delete ]