accessing
hashesTop: anInteger usingLastTweetsUpTo: maxLastTweetsToUse fromHandler: handler
	^ (self fetchLastTweetsUpTo: maxLastTweetsToUse 
           fromHandler: handler) chain flatCollect: [ :tweet | tweet hashes ]; 
                                 groupedBy: #yourself; 
					 					  collect: [ :hashGroup | hashGroup size ]; 
                                 associations; 
                                 sorted: [ :firstHashGroup :secondHashGroup | firstHashGroup value > secondHashGroup value ];
                                 collect: [ :hashGroup | hashGroup key ];
                                 firstAvailable: anInteger.

	
