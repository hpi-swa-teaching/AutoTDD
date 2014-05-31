as yet unclassified
openTravisDialog
	"Open the Travis Dialog containing Build Information Logs and so on..."
	TravisCIGUI openForRepository: self travisSource asString.
	Transcript show: 'Open Travis Dialog'