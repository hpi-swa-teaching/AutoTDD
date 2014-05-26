accessing
soundDictionary
	
	^IdentityDictionary newFrom: {
		#canceled -> ['success.wav'].
		#created -> ['success.wav'].
		#errored -> ['success.wav'].
		#failed -> ['success.wav'].
		#passed -> ['success.wav'].
		#started -> ['success.wav'].
		#unknown -> ['success.wav'] }	