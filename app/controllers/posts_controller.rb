class PostsController < ApplicationController
    before_action :authenticate_user!
    def index
         @posts = Post.all.order(date: :desc)
    end
    
    def new
        @post=Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to "/"
            # render plain: params.inspect
        else
            render "new"
    end
    end
     def destroy
        # render plain: params.inspect
     
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end
    
   private
      def post_params
        params.require(:post).permit(:date, :title, :content)
      end
   

end
