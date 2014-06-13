as yet unclassified
updateData 

	self travisData ifNotNil: [ self travisData update ].
	self localData ifNotNil: [ self localData update ]