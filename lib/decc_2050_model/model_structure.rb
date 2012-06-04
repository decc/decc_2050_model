require_relative 'decc_2050_model'
require 'singleton'

class ModelStructure < Decc2050ModelUtilities
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
  
  def reported_calculator_version
    r("control_m1")
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
    @long_descriptions ||=  (5..56).to_a.map  { |row| [r("control_bo#{row}"),r("control_bp#{row}"),r("control_bq#{row}"),r("control_br#{row}")] }
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
  
  def example_pathways
    @example_pathways ||= generate_example_pathways
  end
  
  def generate_example_pathways
    pathways = {}
    rows = (5..57).to_a
    ('m'..'z').to_a.push("aa").each do |column|
      name = r("control_#{column}4")
      next unless name.is_a?(String) && name.length > 0
      choices = rows.map { |row| r("control_#{column}#{row}") }
      pathways[name] = convert_float_to_letters(choices).join
    end
    pathways
  end
  
end
