accessing
localHandler

	^ localHandler ifNil: [ localHandler := TarHandler new owner: self ]