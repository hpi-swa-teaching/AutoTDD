testing
testAttach
	
	| obj |
	
	obj := Object new.
	testingEntity := ATDDWatcher new.
	testingEntity attach: obj.
	self assert: (testingEntity observers includes: obj).
	testingEntity deattach: obj.
	self deny: (testingEntity observers includes: obj).
	
	testingEntity := ATDDTravisStatus new.
	testingEntity attach: obj.
	self assert: (testingEntity observers includes: obj).
	testingEntity deattach: obj.
	self deny: (testingEntity observers includes: obj).
		
	testingEntity := ATDDGitHubAction new.
	testingEntity attach: obj.
	self assert: (testingEntity observers includes: obj).
	testingEntity deattach: obj.
	self deny: (testingEntity observers includes: obj).