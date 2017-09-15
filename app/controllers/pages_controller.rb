class PagesController < ApplicationController

  before_action :authenticate_user!, only: :admin

  def accueil
    @titre = 'Accueil'
    render :layout => false
  end

  def musiques
    @titre = 'Musiques'
  end

  def biographie
    @titre = 'Biographie'
  end

  def mentions
    @titre = 'Mentions légales'
  end

  def mapping
    @titre = 'Plan du site'
  end

  def admin
    @titre = 'Administration'

    devis = Devi.all
    @stat_devis = {
      pending: devis.where(status: 'pending').count,
      ongoing: devis.where(status: 'ongoing').count,
      done: devis.where(status: 'done').count
    }

    @ratios = DevisConfiguration.first
  end
end
