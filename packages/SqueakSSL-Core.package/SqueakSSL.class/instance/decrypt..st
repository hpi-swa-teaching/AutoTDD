convenience
decrypt: data
	"Convenience API. Decrypt incoming data and return the result.

	Warning: This method may produce more or less results than expected
	unless called with exactly one SSL/TLS frame."

	| buf count |
	buf := data class new: 4096.
	count := self decrypt: data from: 1 to: data size into: buf.
	count < 0 ifTrue:[self error: 'Decryption failed, code: ', count].
	^buf copyFrom: 1 to: count