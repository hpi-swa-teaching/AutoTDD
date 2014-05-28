accessing
selectedBuild: aNumber

	"Good entry for displaying the build matrix ;)"
	selectedBuild := aNumber.
	Transcript show: aNumber; crlf.
	self 
		changed: #selectedBuild;
		changed: #jobs