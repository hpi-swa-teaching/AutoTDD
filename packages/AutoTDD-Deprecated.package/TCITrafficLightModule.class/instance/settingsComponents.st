constants
settingsComponents
	
	^ super settingsComponents
		addAll: { self proOnOffButton . self applyButton . 
				self tokenField . self slugField };
		yourself