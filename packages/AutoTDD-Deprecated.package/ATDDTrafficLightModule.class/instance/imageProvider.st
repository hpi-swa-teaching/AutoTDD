accessing
imageProvider
	
	^ imageProvider ifNil: [ imageProvider := ATDDImageProvider new ]