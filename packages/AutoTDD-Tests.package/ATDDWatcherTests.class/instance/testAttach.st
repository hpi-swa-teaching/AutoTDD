as yet unclassified
testAttach
	
	| obj |
	
	obj := Object new.
	emptyWatcher attach: obj.
	self assert: (emptyWatcher observers includes: obj).
	emptyWatcher deattach: obj.
	self deny: (emptyWatcher observers includes: obj)