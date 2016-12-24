class PostsController < ApplicationController


    before_action :set_posts, only: [:update, :edit, :show, :destroy]

    def index
        session[:user_id] = 4
        @posts = Post.all
    end

    def show
    end

    def edit
    end

    def update
        @post.update(post_params)
        session[:success] = "Artcle modifié avec succès"
        redirect_to posts_path
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.create(post_params)
        redirect_to post_path(post.id)
    end

    def destroy
        @post.destroy
        redirect_to posts_path
    end

    private
    def post_params
        params.require(:post).permit(:name, :content)
    end

    def set_posts
        @post = Post.find(params[:id])
    end
end
