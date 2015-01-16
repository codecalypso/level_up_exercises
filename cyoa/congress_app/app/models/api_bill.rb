require 'congress'
class ApiBill



def self.apirequest
  Congress.key = Rails.config.congress_api_key
  bills = Congress.bills
end

end