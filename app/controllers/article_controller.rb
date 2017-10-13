class ArticleController < ApplicationController

  def index
    @titre = 'Articles'
    @articles = Article.all
  end

  def show
    @article = Article.friendly.find(params[:id])
    @titre = @article.titre
  end

  private
  def article_params
    params.require(:article).permit(:titre, :contenu, :image)
  end
end
