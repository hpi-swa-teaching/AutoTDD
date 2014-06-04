tests
testAttach

	| repo obj |
	repo := TravisCIRepository new.
	obj := Object new.
	repo attach: obj.
	self assert: (repo observers includes: obj).
	repo deattach: obj.
	self deny: (repo observers includes: obj)