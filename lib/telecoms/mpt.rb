require './lib/telecoms/constant_variables.rb'

class Mpt
  include ConstantVariables
  
  def self.check(phone_number)
    phone_number =~ MPT_REGEX ? true : false
  end
end