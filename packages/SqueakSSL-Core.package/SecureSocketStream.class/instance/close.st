initialize
close
	"Flush any data still not sent and take care of the socket."

	super close.
	ssl ifNotNil:[
		ssl destroy.
		ssl := nil.
	].