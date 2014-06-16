as yet unclassified
soundDictionary
	
	^ IdentityDictionary newFrom: {
		#canceled 	-> ['fail.wav'].
		#created 	-> ['success.wav'].
		#errored 	-> ['fail.wav'].
		#failed 		-> ['fail.wav'].
		#passed 	-> ['success.wav'].
		#started 	-> ['success.wav'].
		#unknown 	-> ['success.wav'] }	