tests
testSendOneGossip
	| busDriver busStop expectedAnnouncement |
	
	busStop := 1 asBusStop.
	
	busStop when: BusDriverGossip send: #value: to: [:anAnnoucement | expectedAnnouncement := anAnnoucement].
	busDriver := BusDriver forRout: {busStop}.
	busDriver move;	gossip.

	self assert: expectedAnnouncement isNotNil.
	self assert: expectedAnnouncement busDriver equals: busDriver