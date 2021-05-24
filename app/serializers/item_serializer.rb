class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :price, :description, :category_id, :category, :reviews

  def reviews
    object.reviews.map do |review|
      ::ReviewSerializer.new(review).attributes
    end
  end
end
