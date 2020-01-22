class Stores::FacilitiesController < ApplicationController
	def new
		@facility = Facility.new
	end

	def edit
	end
	
	def show
		@facility = Facility.find(params[:id])
	end

	def index
		@facilities = Facility.all
	end

	def create
		@facility = Facility.new(facility_params)
		@facility.save
		redirect_to stores_facilities_path
	end

	def update
		@facility = Facility.find(params[:id])
		if @facility.update(facility_params)
			redirect_to stores_facility_path
		else
			render :edit
		end
	end

	private

	def facility_params
		params.require(:facility).permit(:table_count, :table_number, :genre_id, :progress, :store_id)
	end
end
