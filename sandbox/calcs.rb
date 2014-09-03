require 'csv'

class EffectsCoder
  def self.encode(level)
    price = level[0]
    size = level[1]
    warranty = level[2]

    price_codes = encode_price(price)
    size_codes = encode_size(size)
    warranty_codes = encode_warranty(warranty)

    effects_coded_level = price_codes.concat(size_codes).concat(warranty_codes)

    return effects_coded_level
  end

  def self.encode_price(price)
    case price
    when 100
      price_codes = [1, -1, -1]
    when 200
      price_codes = [-1, 1, -1]
    when 350
      price_codes = [-1, -1, 1]
    else
      price_codes = [-1, -1, -1]
    end
    return price_codes
  end

  def self.encode_size(size)
    case size
    when "small"
      size_codes = [1, -1]
    when "medium"
      size_codes = [-1, 1]
    else
      size_codes = [-1, -1]
    end
    return size_codes
  end

  def self.encode_warranty(warranty)
    case warranty
    when "1-year"
      warranty_codes = [1]
    else
      warranty_codes = [-1]
    end
    return warranty_codes
  end
end

prices = [100, 200, 350, 475]
sizes = ["small", "medium", "large"]
warranties = ["1-year", "3-year"]

levels = []
prices.each do |price|
  sizes.each do |size|
    warranties.each do |warranty|
      level = [price, size, warranty]
      levels.push(level)
    end
  end
end

samples = []
100.times do
  samples.push(levels.sample)
end

effects_code_labels = ["100", "200", "350", "small", "medium", "1-year"]

output = []

output.push(effects_code_labels)

samples.each do |sample|
  output.push(EffectsCoder.encode(sample))
end

CSV.open("test.csv", "wb") do |csv|
  output.each do |line_of_data|
    csv << line_of_data
  end
end

puts "did CSV stuff"



