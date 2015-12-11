# require "numbers_api/nokogiri"
require "savon"

module NumbersApi

  WSDLS = {
    :company_service => "https://api.nmbrs.nl/soap/v2.1/CompanyService.asmx?WSDL",
    :employee_service => "https://api.nmbrs.nl/soap/v2.1/EmployeeService.asmx?WSDL",
    :debtor_service => "https://api.nmbrs.nl/soap/v2.1/DebtorService.asmx?WSDL"
  }

  ERRORS = {
    1001 => "Invalid Authentication",
    1002 => "Unauthorized Access",
    2001 => "Invalid Hourcomponent",
    2002 => "Invalid Looncomponent",
    2003 => "Invalid Employee",
    2004 => "Invalid Company",
    2005 => "Invalid Organisation",
    2006 => "Invalid Period",
    9999 => "Unknown"
  }

end

require "numbers_api/configuration"
require "numbers_api/company_service"
require "numbers_api/employee_service"
require "numbers_api/debtor_service"
require "numbers_api/version"