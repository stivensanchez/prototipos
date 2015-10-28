class Modulo < ActiveRecord::Base
	has_many :machines
	has_many :groups
end
