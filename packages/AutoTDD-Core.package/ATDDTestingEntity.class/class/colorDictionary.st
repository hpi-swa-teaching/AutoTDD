constants
colorDictionary
	| currentTheme |
	currentTheme := UserInterfaceTheme current.
	^ IdentityDictionary
		newFrom: {
			#error -> (currentTheme properties at: TestRunner->#errorColor).
      		#failure ->  (currentTheme properties at: TestRunner->#failureColor).
			#successful -> (currentTheme properties at: TestRunner->#passColor).
			#pending -> Color gray.
		}