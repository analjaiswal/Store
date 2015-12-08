class Product < ActiveRecord::Base
	has_many :computers
	has_many :printers
end
