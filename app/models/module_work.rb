class ModuleWork < ActiveRecord::Base
    belongs_to :modulo
    belongs_to :machine
    before_validation :calculo
    after_create :prueba
    
    #Calculo de los costos
    def calculo 
        self.minutos_reales = 5 * 480 #cantidad de OPERARIOS * Jornada de Trabajo(Turnos)
        self.costo_minuto = 89 #Costo Real por minuto
        self.otros_costos = 540 * 89 #Tiempo Total(Minutos) * Costo Real por Minutos
        self.costo_mano_obra = 420 * 5 * 89 # Jornada Minutos * Cantidad Operarios * Costo Real por minutos 
        self.manoObraPlaneada = 650.000 * 5 # Salario Total *  Cantidad de operarios 
    end 
    
    #Metodo para crear Un Modulo Nuevo
    def prueba
        if self.moduloCreate.nil? == false
            Modulo.create(nombre: self.moduloCreate)
        end
    end
    
    #Descargar en Excel
    def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |product|
          csv << module_work.attributes.values_at(*column_names)
        end
      end
    end
end
