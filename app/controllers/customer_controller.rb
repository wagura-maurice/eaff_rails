class CustomerController < ApplicationController

	def register
		
	end

	def create

		@customer = Customer.new(fillables)

		respond_to do |format|
			if @customer.save
				format.html { redirect_to(customer_success_url, :notice => 'Thanks, Customer successfully created.') }
			else
				format.html { redirect_to(customer_register_url, :notice => 'Error, Customer creation failed.') }
			end
		end
	end

	def success
	    
	end

	private

	def fillables
		params.permit(:name, :phone)		
	end

end
