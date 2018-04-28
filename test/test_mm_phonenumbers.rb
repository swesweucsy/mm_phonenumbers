require 'test/unit'
require 'mm_phonenumbers'

class MmPhonenumbersTest < Test::Unit::TestCase
  def test_is_valid_phone
    p "Enter Phone number"
    phone_number = gets
    phone_number ||= ''
    phone_number.chomp!
    
    assert_equal true, MmPhonenumbers::is_valid_phone(phone_number)
  end

  def test_get_telecom_name
    p "Enter Phone number"
    phone_number = gets
    phone_number ||= ''
    phone_number.chomp!

    assert_equal "MPT", MmPhonenumbers::get_telecom_name(phone_number)
  end

  def test_is_provided_telecom
    p "Enter Telecom name"
    telecom_name = gets
    telecom_name ||= ''
    telecom_name.chomp!

    p "Enter Phone number"
    phone_number = gets
    phone_number ||= ''
    phone_number.chomp!

    assert_equal true, MmPhonenumbers.is_provided_telecom(
      telecom_name, 
      phone_number)
  end
end