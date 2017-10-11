initialization
initialize
	
	csvPath := '/csvPath/'.
	serviceURL := 'http://api.goeuro.com/api/v2/position/suggest/en/'.
	znClient := ZnClient.
	suggestions := OrderedCollection new.
