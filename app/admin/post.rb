ActiveAdmin.register Post, as: "Article" do

  form do |f|
    inputs 'Nouvel article' do
      input :titre
      input :contenu, :as => :ckeditor
      input :image, :as => :file
    end
    f.actions
  end

  permit_params :titre, :contenu, :image

end
