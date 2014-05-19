accessing
binary
	"Switch to binary"

	super binary.
	decoded := (ReadStream 
		on: decoded originalContents asByteArray 
		from: 1 to: decoded size)
			position: decoded position;
			yourself.
