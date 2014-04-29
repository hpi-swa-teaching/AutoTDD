accessing
offButtonClicked
	self offButton enabled: false.
	self onButton enabled: true.
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self