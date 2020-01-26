class HomesController < ApplicationController

	def top
		@stores = Store.all.search(params[:search])
	end

	def about
	end

	private

	def store_params
		params.require(:store).permit(:store_name, :store_namber, :phone_number, :address, :business_hours, :regular_holiday, :information)
	end
end
