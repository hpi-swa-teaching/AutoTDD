building
createProgressBar
	
	| progressBar |
	
	progressBar := ProgressBarMorph new
		borderWidth: 0;
		color: Color red;
		progressColor: ATDDTrafficLight blue;
		name: 'progressBar';
		color: ATDDTrafficLight gray;
		yourself.
	self window addMorph: progressBar fullFrame: self progressBarFrame