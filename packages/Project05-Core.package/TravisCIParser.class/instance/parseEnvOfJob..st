as yet unclassified
parseEnvOfJob: aJson

	^ (aJson at: 'config') at: 'env'
