require 'test/unit'
require 'sanitize_phone'

class SanitizePhoneTest < Test::Unit::TestCase
  def test_remove_whitespace_and_dash
    phone_number = "09-450-012345 "
    assert_equal '09450012345', 
      SanitizePhone::remove_whitespace_and_dash(phone_number)
  end

  def test_remove_double_country_code
    phone_number = "+95959450012345"
    assert_equal '+959450012345', 
      SanitizePhone::remove_double_country_code(phone_number)
  end

  def test_remove_zero_before_area_code
    phone_number = "+9509450012345"
    assert_equal '+959450012345', 
      SanitizePhone::remove_zero_before_area_code(phone_number)
  end
end