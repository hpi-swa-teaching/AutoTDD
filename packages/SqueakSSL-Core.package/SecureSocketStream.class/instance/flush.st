private-compat
flush
	"Pre-Squeak 4.2 compatibility"

	((outNextToWrite > 1) and: [socket isOtherEndClosed not])
		ifTrue: [
			[self sendData: outBuffer count: outNextToWrite - 1]
				on: ConnectionTimedOut
				do: [:ex | shouldSignal ifFalse: ["swallow"]].
			outNextToWrite := 1]
