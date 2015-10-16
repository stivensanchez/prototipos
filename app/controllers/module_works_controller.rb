class ModuleWorksController < ApplicationController
  before_action :set_module_work, only: [:show, :edit, :update, :destroy]

  # GET /module_works
  # GET /module_works.json
  def index
    @module_works = ModuleWork.all
    @module_work = ModuleWork.new
  end

  # GET /module_works/1
  # GET /module_works/1.json
  def show
    
     respond_to do |format|
      format.html
      format.csv { send_data @module_works.to_csv }
      format.xls
    end
  end

  # GET /module_works/new
  def new
    @module_work = ModuleWork.new
  end

  # GET /module_works/1/edit
  def edit
  end

  # POST /module_works
  # POST /module_works.json
  def create
    @module_work = ModuleWork.new(module_work_params)

    respond_to do |format|
      if @module_work.save
        format.html { redirect_to module_works_path, notice: 'Module work was successfully created.' }
        format.json { render :show, status: :created, location: @module_work }
      else
        format.html { render :new }
        format.json { render json: @module_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module_works/1
  # PATCH/PUT /module_works/1.json
  def update
    respond_to do |format|
      if @module_work.update(module_work_params)
        format.html { redirect_to module_work_path, notice: 'Module work was successfully updated.' }
        format.json { render :show, status: :ok, location: @module_work }
      else
        format.html { render :edit }
        format.json { render json: @module_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module_works/1
  # DELETE /module_works/1.json
  def destroy
    @module_work.destroy
    respond_to do |format|
      format.html { redirect_to module_works_url, notice: 'Module work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module_work
      @module_work = ModuleWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def module_work_params
      params.require(:module_work).permit(:minutos_reales, :costo_minuto, :otros_costos, :costo_mano_obra, :manoObraPlaneada, :modulo_id, :moduloCreate)
    end
end
