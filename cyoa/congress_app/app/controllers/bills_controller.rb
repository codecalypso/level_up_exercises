class BillsController < ApplicationController

	def index 
		@bills = Bill.search(params[:search])	
	end

	def show
		@bills = Bill.find(params[:id])
	end
end
