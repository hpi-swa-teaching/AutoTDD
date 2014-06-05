event handling
onOffButtonClicked
	self isTesting: self isTesting not.
	self isTesting 
		ifTrue: [self listenForNotificationsAbout: self category withTestsIn: self testCategory.
			self onOffButton state: #on]
		ifFalse: [ SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
			self onOffButton state: #off].
	