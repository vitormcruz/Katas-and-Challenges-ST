initialization
initialize

	gossipKnown := Set new add: (BusDriverGossip of: self); yourself.
	currentBusStop := -1 asBusStop.