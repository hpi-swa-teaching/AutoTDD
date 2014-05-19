private
readDataInto: aBuffer
	"Private. Read actual data into the given buffer.
	Return the number of bytes read."

	^readBlock value: aBuffer