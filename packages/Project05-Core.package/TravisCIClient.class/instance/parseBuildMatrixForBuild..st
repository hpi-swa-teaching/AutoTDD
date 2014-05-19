as yet unclassified
parseBuildMatrixForBuild: aString

	| json matrix jobs |
	json := self getJsonForBuild: aString.
	jobs := (json at: 'builds') first at: 'job_ids'.
	matrix := jobs collect: [ :jobid |
		| job |
		job := self getJsonForJob: jobid.
		(job at: 'job') at: 'state' ].
	^ matrix