class CongressController < ApplicationController
  def index
    @congress = Congress.all
  end

  def show
    @congress = Congress.find(params[:id])
  end
end
