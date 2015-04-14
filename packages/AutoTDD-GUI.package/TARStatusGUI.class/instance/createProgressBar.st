building
createProgressBar
	
	| progressBar |
	progressBar := ProgressBarMorph new
		borderWidth: 0;
		color: Color red;
		progressColor: ATDDTrafficLight lightBlue;
		name: 'progressBar';
		color: ATDDTrafficLight lightGray;
		yourself.
	self window addMorph: progressBar fullFrame: self progressBarFrame