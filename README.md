# WalkerMethod

Walker's Alias Method is an O(1) algorithm for selecting elements from an array while following a weighted distribution.  This implementation is a port of http://code.activestate.com/recipes/576564-walkers-alias-method-for-random-objects-with-diffe/

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
