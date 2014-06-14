accessing
parser

	^ parser ifNil: [ parser := TarParser new ]