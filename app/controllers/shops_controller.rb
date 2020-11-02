class ShopsController < ApplicationController

    def index
        @shops = Shop.all
        render json: @shops
    end

    def show 
        @shop = Shop.find(params[:id])
        render json: @shop
    end

    def create
        @shop = Shop.create(shop_params)
        render json: @shop
    end

    def update
        @shop = Shop.find(params[:id])
        @shop.update(shop_params)
        render json: @shop
    end
    
    def destroy 
        @shop = Shop.find(params[:id])
        @shop.destroy
        render json: @shop
    end


    private

    def shop_params
        params.permit(:name, :bio, :roses, :electrum, :open, :password_digest)
    end
end
