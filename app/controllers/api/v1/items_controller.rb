# the namespacing reflects the namespaced routes
# the namespacing is for naming purpuses, to indicate that you're fetching from the api and the version
class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.all
    render json: ItemSerializer.new(items)
  end

  def create
    item = Item.new(item_params)
    if item.save
      render json: ItemSerializer.new(item), status: :accepted #status 202
    else
      render json: item.errors.full_messages, status: :unprocessable_entity # status 422
    end
  end

  def show
    item = Item.find_by(id: params[:id])
    render json: ItemSerializer.new(item), status: :accepted
  end

  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy
  end

  def update
    @item = Item.find_by(id: params[:id])
    if @item.update(item_params)
      render json: ItemSerializer.new(@item), status: :accepted
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :image_url, :price, :description, :category_id)
  end
end
