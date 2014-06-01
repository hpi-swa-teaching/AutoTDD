accessing
buildJsonFor: aNumber

	| builds |
	builds := self buildsDictionary.
	^ builds at: aNumber ifAbsent: [
		builds at: aNumber put: (self client getJsonForBuild: aNumber)]