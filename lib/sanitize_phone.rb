# Class for sanitizing phone numbers
require './lib/telecoms/constant_variables.rb'

class SanitizePhone
  class << self
    include ConstantVariables

    # Removing '[],(),- and whitespace' characters
    # 
    # * Example Test Case
    # '09 45001 2345 ' -> '09450012345'
    # '09-45001-2345'  -> '09450012345'
    # ' 09450012345 '  -> '09450012345'
    def remove_whitespace_and_dash(phone_number)
      if phone_number
        phone_number = phone_number.strip
        phone_number = phone_number.gsub(' ','')
        phone_number = phone_number.gsub('-', '')
      end

      return phone_number
    end

    # Clean Double Country code
    # * Example Test Code
    # '+95959978412345' to '+959978412345'
    def remove_double_country_code(phone_number)
      if phone_number.match(COUNTRY_CODE_REGEX)
        if phone_number.match(DOUBLE_COUNTRY_CODE_REGEX)
          phone_number = phone_number.sub('9595', '95')
        end        
      end
      return phone_number
    end

    # Clean Zero before area code
    # * Example Test Code
    # '+9509978412345' to '+959978412345'
    def remove_zero_before_area_code(phone_number)
      if phone_number.match(ZERO_BEFORE_AREACODE_REGEX)
        phone_number = phone_number.sub('9509', '959')
      end

      return phone_number
    end

    # Checking mm_phone_regex string
    def check_phone_regex(phone_number)
      return phone_number.match(MM_PHONE_REGEX) ? true : false
    end

  end
end