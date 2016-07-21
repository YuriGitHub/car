ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :name, :price,:color, :year, :price_currency, images_attributes: [:photo],kinds_attributes: [:value,:kind]



  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :price_currency,  :as => :select, :collection => [ 'USD', 'UAH', 'RUB']
      f.input :color
      f.input :year
      end
    f.inputs do
      f.has_many :images do |b|
        b.input :photo

      end
    end
    f.inputs do
        f.has_many :kinds do |k|
          k.input :value
          k.input :kind


      end
    end
  f.submit
  end



  index do
    id_column
    column :name
    column "Price" do |product|
     product.price.format
    end
    column "Photo" do |product|
      image_tag product.images.first.photo.url(:thumb)
    end
    actions

  end
end
