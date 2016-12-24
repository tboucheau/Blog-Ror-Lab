class CategoriesController < ApplicationController

    before_action :set_categories, only: [:update, :edit, :show, :destroy]


    def index
        @session = session[:user_id]
        @categories = Category.all
          respond_to do |format|
            format.html
            format.json { render json: @categories }
        end
    end

    def show
    end

    def update
        @category.update(category_params)
        redirect_to category_path(@category.id), success: "Catégorie modifiée avec succès"
    end
    def new
        @category = Category.new
    end

    def edit
    end

    def create
        @category = Category.create(category_params)
        redirect_to categories_path, success: "Catégorie créée avec succès"
    end
    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_path, success: "Catégorie supprimée avec succès"
    end

    private
    def category_params
        params.require(:category).permit(:name, :slug)
    end

    def set_categories
        @category = Category.find(params[:id])
    end
end
