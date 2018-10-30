class CustomerController < ApplicationController

	def register
		
	end

	def create

		@customer = Customer.new(fillables)

		respond_to do |format|
			if @customer.save
				format.html { redirect_to(customer_thanks_url, :notice => 'User was successfully created.') }
			else
				format.html { render :action => "register" }
			end
		end
	end

	def thanks
	    
	end

	private

	def fillables
		params.permit(:name, :phone)		
	end

end
