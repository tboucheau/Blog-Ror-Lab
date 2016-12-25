class PostsController < ApplicationController


    before_action :set_posts, only: [:update, :edit, :show, :destroy]

    def index
        #flash.now[:success] = "Salut" --affiche un message flash sur la session en cours uniquement (ex : alerte promotion)
        @posts = Post.online(1).alpha.includes(:category, :tags).all

        #@posts = Post.published(0).alpha.rewhere(online: 0).all --écrase le scope published pour afficher les offline

        respond_to do |format|
            format.html
            format.json { render json: @posts.as_json(only: [:name, :created_at, :id]) }
        end

    end

    def show
    end

    def edit
    end

    def update
        if @post.update(post_params)
            redirect_to posts_path, success: "Article modifié avec succès"
        else
            render 'edit'
        end
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.create(post_params)
        redirect_to post_path(post.id), success: "Article créé avec succès"
    end

    def destroy
        @post.destroy
        redirect_to posts_path, success: "Article supprimé avec succès"
    end

    private
    def post_params
        params.require(:post).permit(:name, :content, :slug, :category_id)
    end

    def set_posts
        @post = Post.find(params[:id])
    end
end
