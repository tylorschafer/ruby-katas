class Integer
  def numerals
    {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    }
  end

  def to_roman
    numerals.each do |numeral, value|
      if value === self
        return numeral.to_s
      end
    end
  end
end
