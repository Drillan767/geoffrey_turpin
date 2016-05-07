class ArticlesController < ApplicationController
  def show
    @post = Article.find(params[:id])
    @titre = @post.titre
  end

  def index
    @titre = "Articles publiés"
    @post = Article.all
  end

  private
    def article_params
      params.require(:article).permit(:titre, :contenu)
    end

end
