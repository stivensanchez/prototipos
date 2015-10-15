class Lote < ActiveRecord::Base
  belongs_to :variable #as: :attachable, dependent: :destroy
end


 #Resultbalance.create(balance_id: self.id, operario: oper, operacion: fT.operacion_id, maquina: fT.maquina_id, sam: fT.sam)