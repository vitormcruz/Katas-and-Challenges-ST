tests
testGossipsNeverBroadcatedWithNBusDriversDifferentRoute
	| dayOfWork |
	
	dayOfWork := DayOfWork forRoutes: #( #(2 1 2) #(5 2 8)).
	self deny: dayOfWork broadCastedToAll.
	self assert: dayOfWork timeBroadcastGossipsAllDrivers equals: nil.
	