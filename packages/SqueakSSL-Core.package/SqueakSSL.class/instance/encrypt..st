convenience
encrypt: data
	"Convenience API. Encrypt incoming data and return the result."

	| buf count |
	buf := data class new: data size + 100.
	count := self encrypt: data from: 1 to: data size into: buf.
	count < 0 ifTrue:[self error: 'Decryption failed, code: ', count].
	^buf copyFrom: 1 to: count