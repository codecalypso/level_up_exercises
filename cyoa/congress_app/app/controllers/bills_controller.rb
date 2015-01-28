class BillsController < ApplicationController

  # def index
  #   @bill = Bills.all
  # end

  def show
    # @bill = Bills.find(params[:id])
    Congress.key = "1dec920d92b44e9b9219e925a987267c"
     @bills = Congress.bills
     @results = @bills["results"].map do |result|
     {title: result["official_title"],
     introduced_on: result["introduced_on"]}
   end
  end

  def params
    @chamber = @bills["results"].map{|result|result["chamber"]}
    @congress = @bills["results"].map{|result|result["Congress"]}
  end
end

