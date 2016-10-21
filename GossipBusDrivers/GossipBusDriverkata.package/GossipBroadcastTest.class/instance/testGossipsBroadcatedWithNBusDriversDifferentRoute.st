tests
testGossipsBroadcatedWithNBusDriversDifferentRoute
	| dayOfWork |
	
	dayOfWork := DayOfWork forRoutes: #( #(3 1 2 3) #(3 2 3 1) #(4 2 3 4 5)).
	self assert: dayOfWork broadCastedToAll.
	self assert: dayOfWork timeBroadcastGossipsAllDrivers equals: 5.
	