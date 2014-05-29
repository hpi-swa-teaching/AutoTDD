accessing
colorDictionary
	
	^IdentityDictionary newFrom: {
		#canceled -> [ self travisGray ].
		#created -> [ self travisYellow ].
		#errored -> [ self travisGray ].
		#failed -> [ self travisRed ].
		#passed -> [ self travisGreen ].
		#started -> [ self travisYellow ].
		#unknown -> [ self travisGray ] }	