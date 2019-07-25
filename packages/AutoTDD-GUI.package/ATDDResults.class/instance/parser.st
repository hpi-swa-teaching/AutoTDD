accessing
parser
	
	^ parser ifNil: [ parser := self class parser new ]