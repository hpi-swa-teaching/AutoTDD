private-compat
nextPutAllFlush: aCollection
	"Pre Squeak 4.2 compatibility"

	| toPut |
	toPut := binary ifTrue: [aCollection asByteArray] ifFalse: [aCollection asString].
	self flush. "first flush pending stuff, then directly send"
	socket isOtherEndClosed ifFalse: [
		[self sendData: toPut count: toPut size]
			on: ConnectionTimedOut
			do: [:ex | shouldSignal ifFalse: ["swallow"]]]
