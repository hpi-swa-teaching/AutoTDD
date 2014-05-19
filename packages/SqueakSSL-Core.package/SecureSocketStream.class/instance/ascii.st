accessing
ascii
	"Switch to ASCII"

	super ascii.
	decoded := (ReadStream 
		on: decoded originalContents asString 
		from: 1 to: decoded size)
			position: decoded position;
			yourself.
