accessing
backgroundButtonClicked
	self backgroundButton enabled: false.
	self foregroundButton enabled: true.
	"SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self"
	"self sticky: true."
	self goBehind.