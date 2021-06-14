tests
testAttach
	
	| obj |
	
	obj := Object new.
	gitHubAction attach: obj.
	self assert: (gitHubAction observers includes: obj).
	gitHubAction deattach: obj.
	self deny: (gitHubAction observers includes: obj)