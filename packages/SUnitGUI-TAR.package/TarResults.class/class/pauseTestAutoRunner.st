as yet unclassified
pauseTestAutoRunner
	
	self instances
		do: [ :instance | SystemChangeNotifier uniqueInstance noMoreNotificationsFor: instance ]