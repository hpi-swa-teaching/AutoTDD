accessing
soundDictionary
	
	^IdentityDictionary newFrom: {
		#passed -> ['success.wav'].
		#failed -> ['fail.wav'].
		#unknown -> ['fail.wav'].
		#errored -> ['fail.wav'] }	