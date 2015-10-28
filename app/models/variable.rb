class Variable < ActiveRecord::Base
    has_many :lotes, :dependent => :destroy
    belongs_to :datasheet
    before_create :calcular
    before_update :calcular2
    after_create :calcular3
    
   
    def calcular
       self.valor_total = cantidad * valor_unidad
       if self.total == nil 
           self.total = valor_total
       else
           self.total = total + valor_total
       end
    end
    
    def calcular2
        self.valor_total = cantidad * valor_unidad
        self.total = cantidad * valor_unidad
    end
    
    def calcular3
        if Variable.exists? 
          Lote.create(cantidad: self.cantidadLote * self.cantidad, numero: self.numero, datasheet: self.datasheet.nombre, cantidadLote: self.cantidadLote, nombre: self.datasheet.nombre, unidadmedida: self.medida, valor_unitario: self.valor_unidad , valor_total: cantidad)
        end  
    end
end


