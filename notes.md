## Models
    Item
        - name
        - image_url
        - price
        - description
        - category_id

    Review
        - content
        - item_id
        - user_id
    
    Category
        - name

    Associations
        Item:

            has_many :categories
            belongs_to :category

        Review:

            belongs_to :Item
        
        Category:

            has_many :items

        