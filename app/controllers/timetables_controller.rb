class TimetablesController < ApplicationController
	def new
		@timetable = Timetable.new
	end

	def create 
		@timetable = Timetable.new(timetable_params)
		if @timetable.save 
			flash[:notice] = "Timetable has been created."
			redirect_to root_path 
		else
			flash.now[:alert] = "Timetable has not been created."
			render :new
		end
	end

	private 

	def timetable_params
		params.require(:timetable).permit(:day, :hour)
	end
end
