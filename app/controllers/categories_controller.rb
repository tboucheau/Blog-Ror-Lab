class CategoriesController < ApplicationController

    def index
        @categories = Category.all
    end

    def show
        @categories = Category.find(params[:id])
    end

    def update
        @category = Category.find(params[:id])
        @category.update(category_params)
        redirect_to category_path(@category.id)
    end
    def new
        @category = Category.new
    end

    def edit
        @categories = Category.find(params[:id])
    end

    def create
        @category = Category.create(category_params)
        redirect_to category_path(@category.id)
    end
    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_path
    end

    private
    def category_params
        params.require(:category).permit(:name, :slug)
    end
end
