as yet unclassified
openTravisDialog
	"Open the Travis Dialog containing Build Information Logs and so on..."
	| gui |
	self useTravis ifFalse: [^self].
	gui := TravisCIGUI newWithData: self data.
	gui open