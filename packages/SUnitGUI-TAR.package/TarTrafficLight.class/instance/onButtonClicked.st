event handling
onButtonClicked
	self onButton enabled: false.
	self offButton enabled: true.
	self listenForNotificationsAbout: self category withTestsIn: self testCategory