tests
testGossipsNeverBroadcatedToAll
	| dayOfWork |
	
	dayOfWork := DayOfWork forRoutes: #( #(1 2 3) #(4 5 6) ).
	self deny: dayOfWork broadCastedToAll.
	