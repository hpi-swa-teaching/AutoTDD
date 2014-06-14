accessing
localParser

	^ localParser ifNil: [ localParser := TarParser new ]