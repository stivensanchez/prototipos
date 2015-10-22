class Work < ActiveRecord::Base
  belongs_to :modulo
  before_validation :validar

  def validar 
  	self.sueldoTotal = 5.000
  	self.operarios = Machine.where(modulo_id: self.modulo_id).count
  	self.totalPlaneada = self.sueldoTotal * self.operarios
  end 
end
