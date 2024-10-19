#!/usr/bin/perl
use strict;
use warnings;

# Subroutine to convert a word into Gibberish
sub to_gibberish {
    my $word = shift; 
    my $gibberish_word = '';

    # Split the word into syllables by vowels and consonants
    my @syllables = split /([aeiouy])/i, $word;

    # Process each syllable
    for my $syllable (@syllables) {
        if ($syllable =~ /^[aeiou]/i) {
            # If syllable starts with a vowel, add 'idig' before it
            $gibberish_word .= 'idig' . $syllable;
        } elsif ($syllable =~ /^[^aeiou]/i) {
            # If syllable starts with a consonant, add 'idig' after it
            $gibberish_word .= $syllable . 'idig';
        }
    }

    return $gibberish_word;
}

# Ask for user input
print "Enter a word to convert to Gibberish: ";
my $input = <STDIN>;
chomp($input);

# Convert the word to Gibberish
my $gibberish_output = to_gibberish($input);

# Display the result
print "Gibberish: $gibberish_output\n";
