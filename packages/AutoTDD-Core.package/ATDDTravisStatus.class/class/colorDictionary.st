as yet unclassified
colorDictionary
	
	^ IdentityDictionary
		newFrom: { #canceled -> Color gray . #created -> Color orange . 
			#errored -> Color gray . #failed -> Color red . 
			#passed -> Color green . #queued -> Color orange . 
			#received -> Color orange . #started -> Color orange . 
			#unknown -> Color gray . #'not available' -> Color gray }