class PagesController < ApplicationController
  def home
  	@budgets = Budget.all 
  	@timetables = Timetable.all
  end
end
