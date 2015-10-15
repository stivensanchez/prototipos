class JodasController < ApplicationController
  before_action :set_joda, only: [:show, :edit, :update, :destroy]

  # GET /jodas
  # GET /jodas.json
  def index
    @jodas = Joda.all
    @fondo = true
  end

  # GET /jodas/1
  # GET /jodas/1.json
  def show
  end

  # GET /jodas/new
  def new
    @joda = Joda.new
  end

  # GET /jodas/1/edit
  def edit
  end

  # POST /jodas
  # POST /jodas.json
  def create
    @joda = Joda.new(joda_params)

    respond_to do |format|
      if @joda.save
        format.html { redirect_to @joda, notice: 'Joda was successfully created.' }
        format.json { render :show, status: :created, location: @joda }
      else
        format.html { render :new }
        format.json { render json: @joda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jodas/1
  # PATCH/PUT /jodas/1.json
  def update
    respond_to do |format|
      if @joda.update(joda_params)
        format.html { redirect_to @joda, notice: 'Joda was successfully updated.' }
        format.json { render :show, status: :ok, location: @joda }
      else
        format.html { render :edit }
        format.json { render json: @joda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jodas/1
  # DELETE /jodas/1.json
  def destroy
    @joda.destroy
    respond_to do |format|
      format.html { redirect_to jodas_url, notice: 'Joda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joda
      @joda = Joda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joda_params
      params.require(:joda).permit(:nombre, :apellido, :telefono)
    end
end
