constants
imageDictionary

	^ IdentityDictionary newFrom: {
		#canceled 		-> [ #unknown ].
		#created 		-> [ #failed ].
		#errored		-> [ #unknown ].
		#failed			-> [ #errored ].
		#passed		-> [ #passed ].
		#started 		-> [ #failed ].
		#unknown		-> [ #unknown ]. }