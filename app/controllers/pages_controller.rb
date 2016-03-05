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

  def mentions
    @titre = "Mentions légales"
  end

  def mapping
    @titre = "Plan du site"
  end
end
