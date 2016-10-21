action
move
	routeReadStream atEnd ifTrue: [ routeReadStream reset ].
	self gossipChannel unsubscribe: self.
	currentBusStop := routeReadStream next.
   self gossipChannel when: BusDriverGossip send: #listenGossip: to: self.