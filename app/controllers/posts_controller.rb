class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    @titre = "Articles récents"
  end

  def show
    @post = Post.find(params[:id])
    @titre = @post.titre
  end

  private
    def post_params
      params.require(:post).permit(:titre, :contenu, :image)
    end
end
