![Build Status](https://github.com/zendesk/luhn_checksum/actions/workflows/ci.yml/badge.svg)

luhn_checksum
=============

Implementation of the [Luhn algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm) for detecting credit
card numbers in a stream of input text.

Example:

```Ruby
LuhnChecksum.valid?('123451234512348')
```

### Limitations

* `LuhnChecksum.valid?` currently assumes that input text has already been validated to consist of only
digits. An exception will be thrown if non-digits are passed in.
* `LuhnChecksum.valid?` does not validate that the number passed in is any particular length.
The number `6789` will be considered valid, even though most credit card numbers are between
13 and 19 digits in length.

### License

Apache License 2.0
