class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :item_id, :user_id
end
