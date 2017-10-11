test utility
tweetsHavingTop_N_Hashes: top_N_Hashes 

	^ (top_N_Hashes chain reversed collectWithIndex: [ :hash :i | 
			(1 to: i) collect: [ :count | 
				(DictionaryTweetBuilder new withHashes: {hash asString}) build
			].
	  ]) flattened.
