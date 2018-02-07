require './lib/telecoms/constant_variables.rb'

class Telenor
  include ConstantVariables

  def self.check(phone_number)
    p "Telenor"
    phone_number =~ TELENOR_REGEX ? true : false
  end
end