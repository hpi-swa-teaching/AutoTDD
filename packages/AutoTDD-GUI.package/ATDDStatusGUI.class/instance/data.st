accessing
data

	^ data ifNil: [ data := self class nullObject new ]