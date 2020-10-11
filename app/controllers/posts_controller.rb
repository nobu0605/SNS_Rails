class PostsController < ApplicationController
    def new 
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
        @user = User.find(@post.user_id)
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to root_url
        else
            render 'edit'
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to root_url
        else
            render 'new'
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to root_url
    end

    private
    def post_params
        params.require(:post).permit(:user_id,:title, :content)
    end
end
