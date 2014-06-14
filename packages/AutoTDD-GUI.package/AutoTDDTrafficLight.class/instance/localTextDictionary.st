local
localTextDictionary
	
	^ IdentityDictionary newFrom: {
		#errored 	-> [ | count |
				count := self localData results first errorCount.
				count asString, ' Error', ((count > 1) ifTrue: [ 's'] ifFalse: [ String empty ]) ].
		#failed 		-> [ | count |
				count := self localData results first failureCount.
				count asString, ' Failure', ((count > 1) ifTrue: [ 's'] ifFalse: [ String empty ]) ].
		#passed 	-> [ | count |
				count := self localData results first passedCount.
				count asString, ' Pass', ((count > 1) ifTrue: [ 'es'] ifFalse: [ String empty ]) ].
		#unknown 	-> [ 'Unknown' ] }