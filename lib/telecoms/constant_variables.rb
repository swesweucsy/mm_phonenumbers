module ConstantVariables
  # phone regex pattern
  MM_PHONE_REGEX = /^(09|\+?950?9|\+?95950?9)\d{7,9}$/
  COUNTRY_CODE_REGEX = /^\+?950?9\d+$/
  DOUBLE_COUNTRY_CODE_REGEX = /^\+?95950?9\d{7,9}$/
  ZERO_BEFORE_AREACODE_REGEX = /^\+?9509\d{7,9}$/

  # regex patterns for each operator
  #5\d{6}|4\d{7,8}|2\d{6,8}|3\d{7,8}|6\d{6}|8\d{6}|7\d{7}|9(0|1|9)\d{5,6})
  MPT_REGEX = /^(09|\+?959)(2[0-4]\d{5}|5[0-6]\d{5}|8[13-7]\d{5}|
              3[0-369]\d{6}|34\d{7}|4[1379]\d{6}|73\d{6}|91\d{6}|25\d{7}|
              26[0-5]\d{6}|40[0-4]\d{6}|42\d{7}|45\d{7}|89[6789]\d{6})$/
  TELENOR_REGEX = /^(09|\+?959)7(9|8|7)\d{7}$/
  OOREDOO_REGEX = /^(09|\+?959)9(7|6|5)\d{7}$/

end