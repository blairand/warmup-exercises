class ETL
  def self.transform(old)
    result = {}
    old.each do |key,value|
      value.each do |new_key|
        result[new_key.downcase] = key
      end
    end
    return result
  end
end
