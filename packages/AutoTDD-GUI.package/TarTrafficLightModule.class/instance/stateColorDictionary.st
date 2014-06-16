as yet unclassified
stateColorDictionary

	^ IdentityDictionary newFrom: {
		#errored 	-> [ self class red ].
		#failed 		-> [ self class yellow ].
		#passed 	-> [ self class green ].
		#unknown 	-> [ self class darkGray ] }