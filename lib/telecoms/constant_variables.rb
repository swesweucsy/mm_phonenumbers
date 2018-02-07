module ConstantVariables
  # phone regex pattern
  MM_PHONE_REGEX = /^(09|\+?950?9|\+?95950?9)\d{7,9}$/
  COUNTRY_CODE_REGEX = /^\+?950?9\d+$/
  DOUBLE_COUNTRY_CODE_REGEX = /^\+?95950?9\d{7,9}$/
  ZERO_BEFORE_AREACODE_REGEX = /^\+?9509\d{7,9}$/

  # regex patterns for each operator
  MPT_REGEX = /^(09|\+?959)(5\d{6}|4\d{7,8}|2\d{6,8}|3\d{7,8}|6\d{6}|8\d{6}|7\d{7}|9(0|1|9)\d{5,6})$/
  TELENOR_REGEX = /^(09|\+?959)7(9|8|7)\d{7}$/
  OOREDOO_REGEX = /^(09|\+?959)9(7|6)\d{7}$/

end