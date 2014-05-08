accessing
foregroundButtonClicked
	self foregroundButton enabled: false.
	self backgroundButton enabled: true.
	"self listenForNotificationsAbout: self category withTestsIn: self testCategory"
	"self sticky: false."
	self comeToFront.