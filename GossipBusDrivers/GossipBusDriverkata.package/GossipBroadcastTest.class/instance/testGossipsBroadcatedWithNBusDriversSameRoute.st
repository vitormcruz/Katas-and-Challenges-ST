tests
testGossipsBroadcatedWithNBusDriversSameRoute
	| dayOfWork |
	
	dayOfWork := DayOfWork forRoutes: #( #(1 2 3) #(1 2 3)).
	self assert: dayOfWork broadCastedToAll.
	self assert: dayOfWork timeBroadcastGossipsAllDrivers equals: 1.
	