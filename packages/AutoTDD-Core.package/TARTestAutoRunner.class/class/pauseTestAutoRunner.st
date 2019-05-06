pause/resume
pauseTestAutoRunner
	
	self instances
		do: [ :instance | 
			SystemChangeNotifier uniqueInstance noMoreNotificationsFor: instance ]