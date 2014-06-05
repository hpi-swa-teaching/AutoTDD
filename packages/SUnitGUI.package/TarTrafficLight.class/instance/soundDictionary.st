accessing
soundDictionary
	
	^IdentityDictionary newFrom: {
		#green -> ['success.wav'].
		#yellow -> ['fail.wav'].
		#red -> ['fail.wav'] }	