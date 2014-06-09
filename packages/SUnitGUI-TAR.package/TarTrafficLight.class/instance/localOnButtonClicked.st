event handling
localOnButtonClicked
	
	self listenForNotificationsAbout: self category withTestsIn: self testCategory.
	self onOffButton state: #on