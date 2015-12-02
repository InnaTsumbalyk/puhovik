ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :image, :price, :category_id

index do
  column :id
  column 'image' do |product|
    image_tag product.image_url(:small)
  end
  column 'Название', :title
  actions
end

end
