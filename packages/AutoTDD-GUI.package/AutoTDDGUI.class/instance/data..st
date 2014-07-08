accessing
data: anObject

	self data deattach: self.
	data := anObject.
	self data attach: self.
	self window ifNotNil: [self window setLabel: self label]