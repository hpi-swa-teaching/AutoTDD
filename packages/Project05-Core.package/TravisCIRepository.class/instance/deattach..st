as yet unclassified
deattach: anObserver

	self observers remove: anObserver.
	self observers ifEmpty: [ self timer terminate ]