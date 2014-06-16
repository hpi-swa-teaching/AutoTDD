as yet unclassified
stateColorDictionary

	^ IdentityDictionary newFrom: {
		#canceled 	-> [ self class darkGray ].
		#created 	-> [ self class yellow ].
		#errored 	-> [ self class darkGray ].
		#failed 		-> [ self class red ].
		#passed 	-> [ self class green ].
		#queued 	-> [ self class yellow ].
		#started 	-> [ self class yellow ].
		#unknown 	-> [ self class darkGray ] }