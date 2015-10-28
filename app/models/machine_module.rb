class MachineModule < ActiveRecord::Base
  belongs_to :machine
  belongs_to :module_machine
  before_validation :validar
  before_validation :suma_totales

  def validar
  	self.total_maquina = self.cantidad * self.precio
  end

  def suma_totales
  	self.valor_total_maquina = MachineModule.sum(:total_maquina)
  end
end
