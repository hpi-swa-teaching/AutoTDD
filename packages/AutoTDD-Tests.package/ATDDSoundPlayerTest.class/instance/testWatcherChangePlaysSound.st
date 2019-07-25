tests
testWatcherChangePlaysSound
	
	| watcher |
	
	watcher := ATDDWatcher new categoriesToTest: #( 'AutoTDD-Dummy-Success-Tests' ).
	ATDDSoundPlayer instance lastPlayedSound: #unset.
	watcher run.
	(Delay forSeconds: 1) wait.
	self assert: ATDDSoundPlayer instance lastPlayedSound ~= #unset.
	watcher delete