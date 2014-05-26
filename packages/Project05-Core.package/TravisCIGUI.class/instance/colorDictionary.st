accessing
colorDictionary
	
	^IdentityDictionary newFrom: {
		#canceled -> [ Color gray ].
		#created -> [ Color yellow ].
		#errored -> [ Color gray ].
		#failed -> [ Color red ].
		#passed -> [ Color green ].
		#started -> [ Color yellow ].
		#unknown -> [ Color gray ] }	