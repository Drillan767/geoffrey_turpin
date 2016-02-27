class PagesController < ApplicationController
  def accueil
    @titre = "Accueil"
  end
  def musiques
    @titre = "Musiques"
  end
  def biographie
    @titre = "Biographie"
  end
end
