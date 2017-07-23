class IdCard < ApplicationRecord
	validates_presence_of :name
	validates_presence_of :department_name
	validates_presence_of :roll_number
	validates_presence_of :session
end
