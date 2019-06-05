accessing
timerMethod
	self flag: #todo
	"
	[true]  whileTrue: [ 
		(Delay forSeconds: self class refreshInterval) wait.
		self clearCacheAndNotify ]
	"