testing
testObserversAccessors
	
	| obj oc |
	
	obj := Object new.
	oc := OrderedCollection new.
	testingEntity := ATDDWatcher new.
	
	oc add: obj.
	testingEntity observers: oc.
	self assert: testingEntity observers equals: oc.