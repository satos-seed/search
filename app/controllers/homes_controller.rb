class HomesController < ApplicationController

	def top
		@store = Store.all.search(params[:search])
	end

  def about
  end
end
