class Group < ActiveRecord::Base
  belongs_to :modulo
  has_many :opers
end
