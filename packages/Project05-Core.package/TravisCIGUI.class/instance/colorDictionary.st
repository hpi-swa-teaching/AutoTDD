accessing
colorDictionary
	
	^IdentityDictionary newFrom: {
		#canceled -> [ Color gray ].
		#created -> [ Color yellow ].
		#errored -> [ Color gray ].
		#failed -> [ Color red ].
		#passed -> [ Color fromArray: {0. 0.5. 0} ].
		#started -> [ Color yellow ].
		#unknown -> [ Color gray ] }	