constants
imageDictionary

	^ IdentityDictionary newFrom: {
		#errored		-> [ #errored ].
		#failed			-> [ #failed ].
		#passed		-> [ #passed ].
		#unknown		-> [ #unknown ]. }