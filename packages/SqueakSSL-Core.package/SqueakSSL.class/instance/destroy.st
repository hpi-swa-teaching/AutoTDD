initialize
destroy
	"Destroys the underlying platform handle"

	handle ifNotNil:[
		self primitiveSSLDestroy: handle.
		handle := nil.
	].