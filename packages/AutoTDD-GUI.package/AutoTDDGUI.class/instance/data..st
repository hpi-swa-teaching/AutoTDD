accessing
data: anObject

	self data deattach: self.
	data := anObject.
	self data attach: self.
	self setLabel: self label