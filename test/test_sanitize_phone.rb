require 'test/unit'
require 'sanitize_phone'

class SanitizePhoneTest < Test::Unit::TestCase
  def test_remove_whitespace_and_dash
    p "Enter phone to sanitize"
    phone_number = gets
    phone_number ||= ''
    phone_number.chomp!

    assert_equal '09450012345', SanitizePhone::remove_whitespace_and_dash(phone_number)
  end

  def test_remove_double_country_code
    p "Enter phone to remove double country code"
    phone_number = gets
    phone_number ||= ''
    phone_number.chomp!

    assert_equal '+959450012345', SanitizePhone::remove_double_country_code(phone_number)
  end

  def test_remove_zero_before_area_code
    p "Enter phone to remove zero before areacode"
    phone_number = gets
    phone_number ||= ''
    phone_number.chomp!

    assert_equal '+959450012345', SanitizePhone::remove_zero_before_area_code(phone_number)
  end
end