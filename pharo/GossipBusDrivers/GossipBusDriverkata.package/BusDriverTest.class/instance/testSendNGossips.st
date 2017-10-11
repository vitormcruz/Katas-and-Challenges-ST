tests
testSendNGossips
	| busDriver busStop expectedAnnouncements otherGossip actualAnnouncements |
	otherGossip := BusDriverGossip of: nil.	
	actualAnnouncements := Set new.
	
	busStop := 1 asBusStop.
	busStop weak when: BusDriverGossip send: #add: to: actualAnnouncements.
	busDriver := BusDriver forRout: {busStop}.
	
	expectedAnnouncements := busDriver gossipsKnow add: otherGossip; yourself.
	busDriver listenGossip: otherGossip.
	
	busDriver move; gossip.
	
	self assert: actualAnnouncements isNotNil.
	self assert: actualAnnouncements equals: expectedAnnouncements.