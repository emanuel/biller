require 'url_api'
class Bill < ActiveRecord::Base

  def bill_info
    api = UrlApi.new
    api.fetch_bill_info
  end

end
