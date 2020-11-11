## Models
    Item
        - name
        - price
        - image_url
        - description
        - category_id

    Review
        - content
        - item_id
    
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

        