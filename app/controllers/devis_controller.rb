class DevisController < ApplicationController
  before_action :set_devi, only: [:show, :edit, :update, :destroy]

  # GET /devis
  # GET /devis.json
  def index
    @devis = Devi.all
  end

  # GET /devis/1
  # GET /devis/1.json
  def show
  end

  # GET /devis/new
  def new
    @devi = Devi.new
    @devi.specs.build
  end

  # GET /devis/1/edit
  def edit
  end

  # POST /devis
  # POST /devis.json
  def create
    @devi = Devi.new(devi_params)

    respond_to do |format|

      abort params.inspect

      if @devi.save
        format.html { redirect_to @devi, notice: 'Devi was successfully created.' }
        format.json { render :show, status: :created, location: @devi }
      else
        format.html { render :new }
        format.json { render json: @devi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devis/1
  # PATCH/PUT /devis/1.json
  def update
    respond_to do |format|
      if @devi.update(devi_params)
        format.html { redirect_to @devi, notice: 'Devi was successfully updated.' }
        format.json { render :show, status: :ok, location: @devi }
      else
        format.html { render :edit }
        format.json { render json: @devi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devis/1
  # DELETE /devis/1.json
  def destroy
    @devi.destroy
    respond_to do |format|
      format.html { redirect_to devis_url, notice: 'Devi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_devi
    @devi = Devi.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def devi_params
    params.require(:devi).permit(:nom, :prenom, :email, :status,
                                specs_attribute: %i[id genre description image deadline])
  end
end
