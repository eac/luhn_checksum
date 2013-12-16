require_relative 'helper'

# Test data courtsey of:
# * https://github.com/square/luhnybin
# * http://en.wikipedia.org/wiki/Luhn_algorithm
class LuhnChecksumTest < MiniTest::Test

  describe "Luhn filter" do

    it "matches checksums" do
      real_luhns = [ '123451234512348', '5678', '49927398716', '1234567812345670', '56613959932537' ]
      real_luhns.each do |luhn|
        assert_equal true, LuhnChecksum.valid?(luhn), luhn
      end
    end

    it "does not match non-checksums" do
      fake_luhns = [ '8765', '49927398717', '1234567812345678' '566139599325370' ]
      fake_luhns.each do |luhn|
        assert_equal false, LuhnChecksum.valid?(luhn)
      end
    end
  end

end
