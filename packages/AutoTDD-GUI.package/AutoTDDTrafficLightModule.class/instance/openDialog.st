open/close
openDialog

	self use ifFalse: [ ^ self ].
	self class gui openWithData: self data