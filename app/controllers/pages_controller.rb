class PagesController < ApplicationController
  def accueil
    @titre = "Accueil"
    render :layout => false

  end
  def musiques
    @titre = "Musiques"
  end
  def biographie
    @titre = "Biographie"
  end
end
