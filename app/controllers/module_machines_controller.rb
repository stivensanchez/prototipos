class ModuleMachinesController < ApplicationController
  before_action :set_module_machine, only: [:show, :edit, :update, :destroy]

  # GET /module_machines
  # GET /module_machines.json
  def index
    @module_machines = ModuleMachine.all
  end

  # GET /module_machines/1
  # GET /module_machines/1.json
  def show
  end

  # GET /module_machines/new
  def new
    @module_machine = ModuleMachine.new
  end

  # GET /module_machines/1/edit
  def edit
  end

  # POST /module_machines
  # POST /module_machines.json
  def create
    @module_machine = ModuleMachine.new(module_machine_params)

    respond_to do |format|
      if @module_machine.save
        format.html { redirect_to @module_machine, notice: 'Module machine was successfully created.' }
        format.json { render :show, status: :created, location: @module_machine }
      else
        format.html { render :new }
        format.json { render json: @module_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module_machines/1
  # PATCH/PUT /module_machines/1.json
  def update
    respond_to do |format|
      if @module_machine.update(module_machine_params)
        format.html { redirect_to @module_machine, notice: 'Module machine was successfully updated.' }
        format.json { render :show, status: :ok, location: @module_machine }
      else
        format.html { render :edit }
        format.json { render json: @module_machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module_machines/1
  # DELETE /module_machines/1.json
  def destroy
    @module_machine.destroy
    respond_to do |format|
      format.html { redirect_to module_machines_url, notice: 'Module machine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module_machine
      @module_machine = ModuleMachine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def module_machine_params
      params.require(:module_machine).permit(:modulo_id, machine_modules_attributes: [:id, :machine_id, :cantidad, :precio, :total_maquina, :valor_total_maquina, :valor_depreciacion, :module_machine_id, :destroy])
    end
end
