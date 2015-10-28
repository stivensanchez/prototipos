class ModuleMachine < ActiveRecord::Base
  belongs_to :modulo
  belongs_to :machine

  has_many :machine_modules 
  accepts_nested_attributes_for :machine_modules, reject_if: :all_blank, allow_destroy: true
end
