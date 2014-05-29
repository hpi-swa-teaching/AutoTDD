as yet unclassified
parseJobIdsOfBuild: aJson

	^ aJson at: 'job_ids' ifAbsent: [ #() ]
