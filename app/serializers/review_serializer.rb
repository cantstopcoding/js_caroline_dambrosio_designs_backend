class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :item_id, :created_at
end
