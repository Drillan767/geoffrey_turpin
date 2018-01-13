class DevisController < ApplicationController
  before_action :set_devi, only: %i[show edit update destroy envoi_devis print_devis]

  def index
    @devis = Devi.all
  end

  def show
    if cookies[:session_id]
      @titre = 'Devis SGF-' + @devi.id.to_s
      @specs = Spec.find_by(devi_id: @devi.id)
      @ratios = DevisConfiguration.first
    else
      redirect_to new_devi_path, alert: 'Devis introuvable'
    end
  end

  def new
    @titre = 'Nouveau devis'
    @devi = Devi.new
    @devi.specs.build
    @musics = DevisConfiguration.first.musics_ratios.all if DevisConfiguration.exists?
  end

  def edit
    if cookies[:session_id]
      @specs = Spec.find_by(devi_id: @devi.id)
      @titre = 'Editer le devis SGF-' + @devi.id.to_s
    else
      redirect_to biographie_path, alert: "Vous ne pouvez plus modifier votre demande de devis ou vous n'avez pas le droit d'y accéder"
    end
    @musics = DevisConfiguration.first.musics_ratios.all
  end

  def create
    @devi = Devi.new(devi_params)

    respond_to do |format|

      @devi.price = set_price(devi_params)
      @devi.status = 'created'
      @devi.session_id = session.id

      if @devi.save

        cookies[:session_id] = { value: session.id, expires: 1.day.from_now }

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

    params[:specs_attributes].each do |_i, spec|
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

    # Ajout de la TVA
    tva = ((result / 100) * config.tva.to_i)

    price = [result, tva].to_json

    return price
  end

  def envoi_devis
    if cookies[:session_id] && @devi.status == 'created' ||
       cookies[:session_id] && @devi.status == 'pending'
      @titre = 'Devis envoyé'
      # unless @devi.status == 'created'
      ContactMailer.new_devis_notification(@devi).deliver
      @devi.update!(status: 'pending')
      # end

    else
      redirect_to biographie_path, alert: "Vous ne pouvez plus modifier votre demande de devis ou vous n'avez pas le droit d'y accéder"
    end
  end

  def print_devis
    @ratios = DevisConfiguration.first
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'print_devis',
               template: 'devis/print_devis.html.erb',
               disposition: 'attachment'
      end
    end
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