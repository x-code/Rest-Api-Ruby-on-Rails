module Api
  module V1
    class ProductDetailsController < ApplicationController
      def index
        products = Product.order('created_at DESC');
        render json: {status: 'success', message:'get all products', data:products}, status: :ok
      end

      def show
        product = Product.find(params[:id])
        data = ['title'=>product.title];
        render json: {status: 'success', message:'get by id product', data:data}, status: :ok
      end

       def find
        product = Product.find_by_name(params[:name])
        render json: {status: 'success', message:'get by name product', data:product}, status: :ok
      end

      def create
       
        product = Product.new(product_params)
        variants = params[:variants]
        if product.save
          render json: {status: 'success', message:'save product', data:product, variants:variants}, status: :ok
        else
          render json: {status: 'ERROR', message:'product not saved', data:product.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        product = Product.find(params[:id])
        product.destroy
        render json: {status: 'success', message:'deleted product', data:product}, status: :ok
      end

      def update
        product = Product.find(params[:id])
        if product.update_attributes(product_params)
          render json: {status: 'success', message:'updated product', data:product}, status: :ok
        else
          render json: {status: 'ERROR', message:'product not updated', data:product.errors}, status: :unprocessable_entity
        end
      end

      private

      def product_params
        params.permit(:name, :description, :category, :brand)
      end
    end
  end
end
