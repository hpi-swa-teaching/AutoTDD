accessing
delete
	self flag: #todo. "use this message!!"
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self