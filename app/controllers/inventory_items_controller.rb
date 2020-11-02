class InventoryItemsController < ApplicationController

    def index
        @inventory_items = InventoryItem.all
        render json: @inventory_items
    end

    def show 
        @inventory_item = InventoryItem.find(params[:id])
        render json: @inventory_item
    end

    def create
        @inventory_item = InventoryItem.create(inventory_item_params)
        render json: @inventory_item
    end

    def update
        @inventory_item = InventoryItem.find(params[:id])
        @inventory_item.update(inventory_item_params)
        render json: @inventory_item
    end
    
    def destroy 
        @inventory_item = InventoryItem.find(params[:id])
        @inventory_item.destroy
        render json: @inventory_item
    end


    private

    def inventory_item_params
        params.permit(:shop_id, :item_id)
    end

end
