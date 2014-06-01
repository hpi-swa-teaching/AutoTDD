as yet unclassified
parseStateOfJob: aJson

	^ (aJson at: 'job') at: 'state'
