accessing
readBlock: aBlock
	"The block used to read data where required. The block takes one argument,
	the buffer to fill with data and is expected to return the number of bytes read."

	readBlock := aBlock