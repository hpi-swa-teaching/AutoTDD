as yet unclassified
parseBuildMatrixForJsonOfBuild: aJson

	^ (aJson at: 'jobs') collect: [ :job | job at: 'state' ]