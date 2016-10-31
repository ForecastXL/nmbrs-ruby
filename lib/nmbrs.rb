require 'savon'

module Nmbrs
  WSDLS = {
    company_service: 'https://api.nmbrs.nl/soap/v2.1/CompanyService.asmx?WSDL',
    employee_service: 'https://api.nmbrs.nl/soap/v2.1/EmployeeService.asmx?WSDL',
    debtor_service: 'https://api.nmbrs.nl/soap/v2.1/DebtorService.asmx?WSDL'
  }

  ERRORS = {
    1001 => 'Invalid Authentication',
    1002 => 'Unauthorized Access',
    2001 => 'Invalid Hourcomponent',
    2002 => 'Invalid Looncomponent',
    2003 => 'Invalid Employee',
    2004 => 'Invalid Company',
    2005 => 'Invalid Organisation',
    2006 => 'Invalid Period',
    9999 => 'Unknown'
  }
end

require 'nmbrs/configuration'
require 'nmbrs/company_service'
require 'nmbrs/employee_service'
require 'nmbrs/debtor_service'
require 'nmbrs/version'
