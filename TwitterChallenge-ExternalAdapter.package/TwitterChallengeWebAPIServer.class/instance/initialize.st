initialization
initialize

	super initialize.
	teapot := Teapot configure: {
		#port -> 8081.
		#debugMode -> true 
	}.