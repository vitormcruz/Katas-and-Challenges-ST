accessing
hashesTop: anInteger 
	((((self flatCollect: [ :tweet | tweet hashes ]) groupedBy: #yourself) collect: [ :it | it size ]) associations sorted: [ :first :second | first value > second value ]) firstAvailable: 10.
	
