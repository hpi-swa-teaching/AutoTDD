initialize
destroy
	ssl ifNotNil:[
		ssl destroy.
		ssl := nil
	].
	super destroy.