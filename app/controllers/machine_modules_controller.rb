class MachineModulesController < ApplicationController
  before_action :set_machine_module, only: [:show, :edit, :update, :destroy]

  # GET /machine_modules
  # GET /machine_modules.json
  def index
    @machine_modules = MachineModule.all
  end

  # GET /machine_modules/1
  # GET /machine_modules/1.json
  def show
  end

  # GET /machine_modules/new
  def new
    @machine_module = MachineModule.new
  end

  # GET /machine_modules/1/edit
  def edit
  end

  # POST /machine_modules
  # POST /machine_modules.json
  def create
    @machine_module = MachineModule.new(machine_module_params)

    respond_to do |format|
      if @machine_module.save
        format.html { redirect_to @machine_module, notice: 'Machine module was successfully created.' }
        format.json { render :show, status: :created, location: @machine_module }
      else
        format.html { render :new }
        format.json { render json: @machine_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machine_modules/1
  # PATCH/PUT /machine_modules/1.json
  def update
    respond_to do |format|
      if @machine_module.update(machine_module_params)
        format.html { redirect_to @machine_module, notice: 'Machine module was successfully updated.' }
        format.json { render :show, status: :ok, location: @machine_module }
      else
        format.html { render :edit }
        format.json { render json: @machine_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_modules/1
  # DELETE /machine_modules/1.json
  def destroy
    @machine_module.destroy
    respond_to do |format|
      format.html { redirect_to machine_modules_url, notice: 'Machine module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine_module
      @machine_module = MachineModule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def machine_module_params
      params.require(:machine_module).permit(:machine_id, :cantidad, :fecha_compra, :precio, :total_maquina, :valor_total_maquina, :valor_depreciacion)
    end
end
