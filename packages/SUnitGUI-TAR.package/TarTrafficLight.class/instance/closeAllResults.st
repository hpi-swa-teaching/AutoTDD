utility
closeAllResults
	self trafficLightResults
		do: [ :testResultMorph | testResultMorph deleteTestResultMorphs ]