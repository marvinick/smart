class Timetable < ActiveRecord::Base
	validates :day, presence: true 
	validates :hour, presence: true
end
