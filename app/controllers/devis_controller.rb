class DevisController < ApplicationController
  before_action :set_devi, only: [:show, :edit, :update, :destroy]

  def index
    @devis = Devi.all
  end

  def show
    @specs = Spec.find_by(devi_id: @devi.id)
  end

  def new
    @titre = 'Nouveau devis'
    @devi = Devi.new
    @devi.specs.build
    @musics = DevisConfiguration.first.musics_ratios.all
  end

  def edit
    @musics = DevisConfiguration.first.musics_ratios.all
  end

  def create
    @devi = Devi.new(devi_params)

    respond_to do |format|

      @devi.price = set_price(devi_params)
      @devi.status = 'created'
      @devi.session_id = session.id.gsub(/[^\d]/, '').to_s

      if @devi.save
        format.html { redirect_to @devi, notice: 'Devis créé avec succès' }
        format.json { render :show, status: :created, location: @devi }
      else
        format.html { render :new }
        format.json { render json: @devi.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @devi.update(devi_params)

        # a = 'truc-30'
        #
        # abort a.partition('-').first

        @devi.price = set_price(devi_params)

        format.html { redirect_to @devi, notice: 'Devis mis à jour' }
        format.json { render :show, status: :ok, location: @devi }
      else
        format.html { render :edit }
        format.json { render json: @devi.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @devi.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  def set_price(params)

    config = DevisConfiguration.first
    result = 0
    index = 0

    params[:specs_attributes].each do |i, spec|
      # Calcul du coût de la musique par rapport à sa longueur
      taux_seconde = spec[:genre].partition('-').last * config.ratio_facturation.to_i
      result += (((spec[:minutes].to_i * 60).to_i + spec[:secondes].to_i).to_i * taux_seconde.to_i).to_i
      result *= config.taux_image if spec[:image].to_i == 1

      index += 1
    end

    # Calcul du coût par nouvelle musique s'il y en a plus d'une
    result *= config.per_new_music.to_i if index > 0
    # Calcul du bonus de deadline si elle a été définie
    result *= config.deadline unless params[:deadline].blank?

    return result

  end

  private

  def set_devi
    @devi = Devi.find(params[:id])
  end

  def devi_params
    params.require(:devi).permit(:nom, :prenom, :email, :status, :session_id, :currency, :deadline,
                                 specs_attributes: %i[id genre description image minutes secondes])
  end
end