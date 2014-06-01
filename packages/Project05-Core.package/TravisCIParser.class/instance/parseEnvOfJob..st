as yet unclassified
parseEnvOfJob: aJson

|aConfig aJob|

	aJob := (aJson at: 'job').
	aConfig := (aJob at: 'config').

	^ (aConfig at: 'env')
