# the namespacing reflects the namespaced routes
# the namespacing is for naming purpuses, to indicate that you're fetching from the api and the version
class Api::V1::ItemsController < ApplicationController
    def index
        items = Item.all 
        render json: items
    end

    def create
        item = Itam.new(item_params)

        if item.save
            render json: item, status: :accepted
        else
            render json: {errors: item.errors.full_messages},
            status: :unprocessible_entity
        end
    end

    private

    def item_params
        params.require(:item).permit(:name, :image_url, :price, :description, :category_id)
    end
end