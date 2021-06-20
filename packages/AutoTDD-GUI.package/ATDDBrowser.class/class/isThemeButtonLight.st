accessing
isThemeButtonLight
	
	^ (UserInterfaceTheme current properties at: PluggableButtonMorph->#color) rgbTriplet average < 0.5