tests
testSendOneGossip
	| busDriver busStop expectedAnnouncement |
	busStop := 1 asBusStop.
	expectedAnnouncement := OrderedCollection new.	
	
	busStop weak when: BusDriverGossip send: #add: to: expectedAnnouncement.
	busDriver := BusDriver forRout: {busStop}.
	busDriver move;	gossip.

	self assert: expectedAnnouncement size equals: 1.
	self assert: (expectedAnnouncement at: 1) busDriver equals: busDriver