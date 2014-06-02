as yet unclassified
colorDictionary
	
	^ IdentityDictionary newFrom: {
		#canceled 	-> [ self travisGray ].
		#created 	-> [ self travisYellow ].
		#errored 	-> [ self travisGray ].
		#failed 		-> [ self travisRed ].
		#passed 	-> [ self travisGreen ].
		#queued 	-> [ self travisYellow ].
		#started 	-> [ self travisYellow ].
		#unknown 	-> [ self travisGray ] }	