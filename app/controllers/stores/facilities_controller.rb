class Stores::FacilitiesController < ApplicationController
	#before_action :authenticate_user, {only: [:new, :edit, :update]}
	def new
		@facility = Facility.new
	end

	def edit
	end
	
	def show
		@facility = Facility.find(params[:id])
	end

	def index
		#@facility = Facility.find(params[:id])
		@facilities = Facility.all
	end

	def create
		@facility = Facility.new(facility_params)
		if @facility.save
			redirect_to stores_facilities_path
		else
			render :new
		end
	end

	def update
		@facility = Facility.find(params[:id])
		if @facility.update(facility_params)
			redirect_to stores_facilities_path
		else
			render :edit
		end
	end

	private

	def facility_params
		params.require(:facility).permit(:table_count, :table_status, :genre_status, :progress, :genre_id, :store_id)
	end
end
