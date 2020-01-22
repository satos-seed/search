class Stores::StoresController < ApplicationController

	def top
		@store = Store.find(params[:id])
	end

	def create
		@store = Store.new(store_params)
		if @store.save
			redirect_to stores_store_path(@store.id)
		else
			render :new
		end	
	end

	def show
		@store = Store.find(params[:id])
		
	end

	def esit
		@store = Store.find(params[:id])
	end

	def update
		@store = Store.find(params[:id])
		if @store.update(store_params)
			flash[:notice] = "更新完了"
			redirect_to stores_store_path(@store.id)
		else
			render :edit
		end
	end

	private

	def store_params
		params.require(:store).permit(:store_name, :store_namber, :phone_number, :address, :business_hours, :regular_holiday, :information)
	end

	def facility_params
		params.require(:facility).permit(:table_count, :darte_table, :billiard_table, :genre_id, :progress)
	end

end
