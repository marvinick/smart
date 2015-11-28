class Budget < ActiveRecord::Base
	validates :amount, presence: true
end
