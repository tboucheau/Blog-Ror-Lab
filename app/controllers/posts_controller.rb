class PostsController < ApplicationController


    before_action :set_posts, only: [:update, :edit, :show, :destroy]

    def index
        #flash.now[:success] = "Salut"
        @posts = Post.all
    end

    def show
    end

    def edit
    end

    def update
        @post.update(post_params)
        redirect_to posts_path, success: "Article modifié avec succès"
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
        params.require(:post).permit(:name, :content)
    end

    def set_posts
        @post = Post.find(params[:id])
    end
end
