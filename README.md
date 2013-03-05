# WalkerMethod

Walker's Alias Method is an O(1) algorithm for selecting elements from an array given a weighted distribution.

For example, let's say you want to return `:win` 80% of the time and `:lose` 20% of the time.  You could fill an array with
8 examples of `:win` and 2 examples `:lose`, then pick a random element.  You could also use ranges, picking a random number
between 0.0 and 1.0 and returning `:win` when the number is below 0.8, `:lose` otherwise.  But, these algorithms are still O(n).
You can do better by using a heap or binary search tree.  Walker's Alias Method is better still, with a constant runtime once an O(n)
pre-computation phase has completed.  For this example, you could do:

    selector = WalkerMethod.new([:win, :lose], [80, 20])
    selector.random

This implementation is a port of http://code.activestate.com/recipes/576564-walkers-alias-method-for-random-objects-with-diffe/ to Ruby.

## Speed

It's FAST and simple.  It samples from a 50,000 word frequency dictionary 10,000 times in 1.2 miliseconds.

## Installation

Add this line to your application's Gemfile:

    gem 'walker_method'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install walker_method

## Usage

    # Sampling from an English word frequency dictionary care of http://invokeit.wordpress.com/frequency-word-lists

    words = ["you", "the", "i", "to", "a", "and", "it", "of", "that", "in", "is", "me", "what", "this", "for", "my", "on", "your", "we", "have", "do", "no", "don't", "are", "be"]
    freqs = [4621939, 3957465, 3476773, 2873389, 2551033, 1775393, 1693042, 1531878, 1323823, 1295198, 1242191, 1208959, 1071825, 961194, 898671, 877684, 867296, 834953, 819499, 812625, 799991, 788200, 764177, 743194, 743014]

    selector = WalkerMethod.new(words, weights)
    selector.random
    # => "and"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
