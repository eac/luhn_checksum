module Luhn

  # Numeric ascii bytes to Luhn value
  ODD_LUHN_VALUE = {
    48 => 0,
    49 => 1,
    50 => 2,
    51 => 3,
    52 => 4,
    53 => 5,
    54 => 6,
    55 => 7,
    56 => 8,
    57 => 9,
    nil => 0
  }.freeze

  EVEN_LUHN_VALUE = {
    48 => 0, # 0 * 2
    49 => 2, # 1 * 2
    50 => 4, # 2 * 2
    51 => 6, # 3 * 2
    52 => 8, # 4 * 2
    53 => 1, # 5 * 2 - 9
    54 => 3, # 6 * 2 - 9
    55 => 5, # etc ...
    56 => 7,
    57 => 9,
  }.freeze


  def self.valid?(numbers)
    sum = 0

    odd = true
    numbers.reverse.bytes.each do |number|
      if odd
        odd = false
        sum += ODD_LUHN_VALUE[number]
      else
        odd = true
        sum += EVEN_LUHN_VALUE[number]
      end
    end

    sum % 10 == 0
  end

end
