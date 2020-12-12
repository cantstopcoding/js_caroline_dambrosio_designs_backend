class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :item_id
end
