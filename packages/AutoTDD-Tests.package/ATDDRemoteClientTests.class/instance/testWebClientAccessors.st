tests
testWebClientAccessors
	
	| rc wc |
	
	rc := ATDDRemoteClient new.
	wc := WebClient new.
	rc webClient: wc.
	self assert: rc webClient equals: wc.