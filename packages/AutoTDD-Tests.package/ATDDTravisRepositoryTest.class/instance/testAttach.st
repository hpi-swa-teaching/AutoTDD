tests
testAttach
	
	
	"| obj |
	obj := Object new.
	repository attach: obj.
	self assert: (repository observers includes: obj).
	repository deattach: obj.
	self deny: (repository observers includes: obj)"
	self flag: #todo