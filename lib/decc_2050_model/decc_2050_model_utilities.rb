class Decc2050ModelUtilities
  # Set the 9 decimal points between 1.1 and 3.9
  FLOAT_TO_LETTER_MAP = Hash["abcdefghijklmnopqrstuvwxyzABCD".split('').map.with_index { |l,i| [(i/10.0)+1,l] }]
  FLOAT_TO_LETTER_MAP[0.0] = '0'
  FLOAT_TO_LETTER_MAP[1.0] = '1'
  FLOAT_TO_LETTER_MAP[2.0] = '2'
  FLOAT_TO_LETTER_MAP[3.0] = '3'
  FLOAT_TO_LETTER_MAP[4.0] = '4'
  
  LETTER_TO_FLOAT_MAP = FLOAT_TO_LETTER_MAP.invert
  
  def convert_float_to_letters(array)
    array.map do |entry|
      entry.is_a?(Float) ? FLOAT_TO_LETTER_MAP[entry] || entry : entry
    end
  end
  
  def convert_letters_to_float(array)
    array.map do |entry|
      LETTER_TO_FLOAT_MAP[entry].to_f || entry.to_f
    end
  end
  
  CONTROL = (5..57).to_a.map { |r| "control_e#{r}"  }
  
  def set_choices(code)
    choices = code.split('')
    choices = convert_letters_to_float(choices)
    set_array(CONTROL,choices)
    choices
  end
  
  def get_array(references)
    references.map do |reference|
      r(reference)
    end
  end
  
  def r(reference)
    if excel.respond_to?(reference)
      ruby_value(excel.send(reference))
    else
      0
    end
  end
  
  
  def set_array(references, values)
    values.each_with_index do |v,i|
      ref = "set_#{references[i]}"
      if excel.respond_to?(ref)
        excel.send(ref,excel_value(v))
      end
    end
  end
  
  def reset
    excel.reset
  end

  def ruby_value(excel_value)
    case excel_value[:type]
    when :ExcelNumber; excel_value[:number]
    when :ExcelString; excel_value[:string].encode("utf-8","utf-8")
    when :ExcelBoolean; excel_value[:number] == 1
    when :ExcelEmpty; 0
    when :ExcelError; [:value,:name,:div0,:ref,:na][excel_value[:number]]
    else
      raise Exception.new("ExcelValue type #{excel_value[:type].inspect} not recognised")
    end
  end
  
  def excel_value(ruby_value)
    excel_value = excel::ExcelValue.new
    case ruby_value
    when Numeric
      excel_value[:type] = :ExcelNumber
      excel_value[:number] = ruby_value
    end
    excel_value
  end
  
end