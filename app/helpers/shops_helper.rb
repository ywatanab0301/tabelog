module ShopsHelper
  def converting_to_jpy(price)
    "#{price.to_s(:delimited, delimiter: ',')}円"
  end

  def converting_to_phone_number(number)
    "0#{number.to_i}"
  end
end
