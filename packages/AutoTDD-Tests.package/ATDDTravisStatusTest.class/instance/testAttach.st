tests
testAttach
	
	| obj |
	
	obj := Object new.
	travisStatus attach: obj.
	self assert: (travisStatus observers includes: obj).
	travisStatus deattach: obj.
	self deny: (travisStatus observers includes: obj)