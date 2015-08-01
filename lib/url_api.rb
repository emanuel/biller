require 'httparty'

class UrlApi
  API_URL = "http://safe-plains-5453.herokuapp.com/bill.json"

  def fetch_bill_info
    response = HTTParty.get(API_URL)
    response.response.code == "200" ? JSON.parse(response.body) : nil
  end

end
