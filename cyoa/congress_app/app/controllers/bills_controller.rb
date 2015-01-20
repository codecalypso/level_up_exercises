class BillsController < ApplicationController

  def index
    @bill = Bills.all
  end
    
  def show
    @bill = Bills.find(params[:id])
  end
end
