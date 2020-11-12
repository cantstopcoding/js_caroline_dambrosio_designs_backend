class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :price, :description, :category_id, :category 
end
