accessing
hashesTop: anInteger 
	^ self chain flatCollect: [ :tweet | tweet hashes ]; 
					 groupedBy: #yourself; 
					 collect: [ :hashGroup | hashGroup size ]; 
					 associations; 
					 sorted: [ :firstHashGroup :secondHashGroup | firstHashGroup value > secondHashGroup value ];
					 collect: [ :hashGroup | hashGroup key ];
					 firstAvailable: 10.

	
