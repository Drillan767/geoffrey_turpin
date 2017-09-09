class DevisConfigurationsController < ApplicationController
  before_action :set_devis_configuration, only: [:show, :edit, :update, :destroy]

  # GET /devis_configurations
  # GET /devis_configurations.json
  def index
    @devis_configurations = DevisConfiguration.all
  end

  # GET /devis_configurations/1
  # GET /devis_configurations/1.json
  def show
  end

  # GET /devis_configurations/new
  def new
    @devis_configuration = DevisConfiguration.new
  end

  # GET /devis_configurations/1/edit
  def edit
  end

  # POST /devis_configurations
  # POST /devis_configurations.json
  def create
    @devis_configuration = DevisConfiguration.new(devis_configuration_params)

    respond_to do |format|
      if @devis_configuration.save
        format.html { redirect_to @devis_configuration, notice: 'Devis configuration was successfully created.' }
        format.json { render :show, status: :created, location: @devis_configuration }
      else
        format.html { render :new }
        format.json { render json: @devis_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devis_configurations/1
  # PATCH/PUT /devis_configurations/1.json
  def update
    respond_to do |format|
      if @devis_configuration.update(devis_configuration_params)
        format.html { redirect_to @devis_configuration, notice: 'Devis configuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @devis_configuration }
      else
        format.html { render :edit }
        format.json { render json: @devis_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devis_configurations/1
  # DELETE /devis_configurations/1.json
  def destroy
    @devis_configuration.destroy
    respond_to do |format|
      format.html { redirect_to devis_configurations_url, notice: 'Devis configuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_devis_configuration
    @devis_configuration = DevisConfiguration.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def devis_configuration_params
    params.require(:devis_configuration).permit(:ratio_facturation, :tva, :taux_image, :deadline, :per_new_music)
  end
end
