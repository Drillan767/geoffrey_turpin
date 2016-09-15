ActiveAdmin.register Article do

  permit_params :titre, :contenu, :image

  controller do
    def find_resource
      scoped_collection.where(slug: params[:id]).first!
    end
  end

  form do |f|
    f.inputs "Article" do
      f.input :titre
      f.input :contenu
      f.input :image, :as => :file
    end
    f.actions
  end
end