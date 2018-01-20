class AdminDevisController < ApplicationController
  def index
    @titre = 'Administration'
  end

  def status
    @titre = 'Liste des devis'
    status = params[:status]
    status == 'all' ? @devis = Devi.all : @devis = Devi.where(status: status)
  end

  def show
    @devis = Devi.find(params[:id])
    @titre = 'Devis SGF-' + @devis.id.to_s
  end

  def change
    @devis = Devi.find(params[:id])
    @devis.update!(status: params[:status])
    redirect_to devis_show_admin_path(@devis.id), notice: 'Composition définie comme "commencée"'
  end

  def destroy
    Devi.destroy(params[:id])
    redirect_to devis_status_admin_path(status: 'all'), notice: 'Devis supprimé avec succès'
  end
end
