require 'sanitize_phone'
require 'telecoms/mpt'
require 'telecoms/ooredoo'
require 'telecoms/telenor'

class MmPhonenumbers
  def self.is_valid_phone(phone_number)
    if phone_number
      phone_number = SanitizePhone::remove_whitespace_and_dash(phone_number)
      phone_number = SanitizePhone::remove_double_country_code(phone_number)
      phone_number = SanitizePhone::remove_zero_before_area_code(phone_number)

      return SanitizePhone::check_phone_regex(phone_number) ? true : false
    end
  end

  def self.get_telecom_name(phone_number)
    telecom_name = ''
    if phone_number && self.is_valid_phone(phone_number)
      
      if Mpt::check(phone_number)
        telecom_name = 'MPT'

      elsif Telenor::check(phone_number)
        telecom_name = 'TELENOR'

      elsif Ooredoo::check(phone_number)
        telecom_name = 'OOREDOO'

      else
        telecom_name = 'UNKNOWN'
      end
      
      return telecom_name
    end
  end

  def self.is_provided_telecom(telecom_name, phone_number)
    if phone_number && self.is_valid_phone(phone_number)
      case telecom_name.downcase
      when "telenor"
        return Telenor::check(phone_number)

      when "ooredoo"
        return Ooredoo::check(phone_number)

      when "mpt"
        return Mpt::check(phone_number)

      else
        raise 'Unknown Telecom Name'
      end

    end
  end

end