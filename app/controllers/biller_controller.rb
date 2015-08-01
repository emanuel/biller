class BillerController < ApplicationController

  def index
    @bill = Bill.new.bill_info

    if @bill.present?
      @statement = @bill["statement"]
      @grand_total = @bill["total"]
      @package = @bill["package"]
      @call_charges = @bill["callCharges"]
      @sky_store = @bill["skyStore"]
    end
  end


  def welcome

  end

end
