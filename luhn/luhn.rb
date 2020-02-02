class Luhn
  def self.valid?(cc_string)
    nums = cc_string.tr(' ', '').split('')
    if nums.length > 1
      doubles = nums.reverse.each_with_index.map do |num, index|
        if num.to_i.to_s == num
          index.odd? ? num.to_i * 2 : num.to_i
        else
          return false
        end
      end
      fixed_nums = doubles.map { |num| num > 9 ? num - 9 : num }
      fixed_nums.sum % 10 == 0
    else
      return false
    end
  end
end
