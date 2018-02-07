require './lib/telecoms/constant_variables.rb'

class Ooredoo
  include ConstantVariables

  def self.check(phone_number)
    p "Ooredoo"
    phone_number =~ OOREDOO_REGEX ? true : false
  end
end