class BillsController < ApplicationController

  def index
    if params[:search]
     @bills = Bill.search(params[:search])
   else
     @bills = Bill.all
   end
  end

  def show
    @bills = Bill.find(params[:id])
  end
end
