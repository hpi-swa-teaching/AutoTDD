tests
testLoadAbsent

	self assert: (ATDDImageProvider new loadResource: 'foo.png') isForm