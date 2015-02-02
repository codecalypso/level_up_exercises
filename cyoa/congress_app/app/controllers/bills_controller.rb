class BillsController < ApplicationController

  def index
    Congress.key = "1dec920d92b44e9b9219e925a987267c"
    @bills = Congress.bills
    @results = @bills["results"].map do |result|
    {title: result["official_title"],
    introduced_on: result["introduced_on"]}
    end
  end

  def show
     Congress.key = "1dec920d92b44e9b9219e925a987267c"
    @bills = Congress.bills
      @results = @bills["results"].select do |result|
        result["bill_id"]
    end
  end
end

