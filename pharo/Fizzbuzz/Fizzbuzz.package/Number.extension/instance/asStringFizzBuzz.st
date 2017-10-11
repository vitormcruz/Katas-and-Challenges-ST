*Fizzbuzz
asStringFizzBuzz

	|fizzBuzzString|

	fizzBuzzString :=  NonConcatenableString forString: self asString.
	self \\ 3 = 0 ifTrue: [fizzBuzzString := fizzBuzzString,  'Fizz'].
	self \\ 5 = 0 ifTrue: [fizzBuzzString := fizzBuzzString,  'Buzz'].

	^fizzBuzzString asString.