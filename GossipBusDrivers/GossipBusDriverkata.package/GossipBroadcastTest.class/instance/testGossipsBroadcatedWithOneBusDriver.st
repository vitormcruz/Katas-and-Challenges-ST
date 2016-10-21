tests
testGossipsBroadcatedWithOneBusDriver
	| dayOfWork |
	
	dayOfWork := DayOfWork forRoutes: #( #(1 2 3) ).
	self assert: dayOfWork broadCastedToAll.
	