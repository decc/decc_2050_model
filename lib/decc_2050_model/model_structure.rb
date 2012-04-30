require_relative 'decc_2050_model'
require 'singleton'

class ModelStructure
  include Singleton
  
  attr_accessor :excel, :choices
    
  def initialize
    @excel = Decc2050Model
    @choices = []
    types.each_with_index do |choice_type,i|
      case choice_type
      when 0.0; next
      when /[abcd]/i; choices << ModelAlternative.new(i,names[i],choice_type,descriptions[i],long_descriptions[i])
      else; choices << ModelChoice.new(i,names[i],choice_type,descriptions[i],long_descriptions[i])
      end
    end
  end
  
  def types
    @types ||= (5..56).to_a.map { |row| r("control_f#{row}") }
  end
  
  def names
    @names ||= (5..56).to_a.map { |row| r("control_d#{row}") }
  end

  def descriptions
    @descriptions ||= (5..56).to_a.map { |row| [r("control_h#{row}"),r("control_i#{row}"),r("control_j#{row}"),r("control_k#{row}")] }
  end

  def long_descriptions
    @long_descriptions ||=  (5..56).to_a.map  { |row| [r("control_bp#{row}"),r("control_bq#{row}"),r("control_br#{row}"),r("control_bs#{row}")] }
  end
    
  def demand_choices
    choices[21..39]
  end
  
  def supply_choices
    choices[0..20]
  end
  
  def geosequestration_choice
    choices[40]
  end
  
  def balancing_choice
    choices[41]
  end
  
  def r(reference)
    if excel.respond_to?(reference)
      ruby_value(excel.send(reference))
    else
      0
    end
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
  
end
