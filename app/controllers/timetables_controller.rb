class TimetablesController < ApplicationController
	before_action :set_timetable, only: [:show, :edit, :update, :destroy]

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

	def show; end 

	def edit; end 

	def update 
		if @timetable.save
			flash[:notice] = "Your timetable has been updated."
			redirect_to @timetable 
		else
			flash.now[:alert] = "There is something wrong."
			render :edit
		end
	end

	def destroy
		@timetable.destroy 
	end

	private 

	def set_timetable 
		@timetable = Timetable.find(params[:id])
	end

	def timetable_params
		params.require(:timetable).permit(:day, :hour)
	end
end
