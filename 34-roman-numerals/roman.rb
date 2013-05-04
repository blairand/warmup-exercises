class Integer
  def to_roman
    result = "I" * self
    result = result.gsub("IIIII", "V").gsub("VV", "X").gsub("XXXXX", "L").gsub("LL", "C").gsub("CCCCC", "D").gsub("DD", "M").gsub("VIIII", "IX").gsub("IIII", "IV").gsub("XXXXVIII", "XLVIII").gsub("DCCCCXI", "CMXI").gsub("CCCCII", "CDII").gsub("CXXXXI","CXLI").gsub("LXXXXIII","XCIII")
    result
  end
end
