class Machine < ActiveRecord::Base
  belongs_to :modulo
  has_many :module_works
end
