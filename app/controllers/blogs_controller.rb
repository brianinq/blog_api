class BlogsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecorInvalid, with: :render_not_invalid
    def index
        render json: Blog.all, status: :ok
    end
    def create
        blog = Blog.create!(blog_params)
        render json: blog, status: :created
    end
    def show
        blog = find_blog
        render json: CustomBlogSerializer.new(blog), status: :ok
    end
    def update
        
    end
    def destroy
        
    end

    private
    def find_blog
        Blog.find(params[:id])
    end
    def blog_params
        params.permit(:title, :poster, :user_id, :category_id)
    end
    def render_not_found
        render json: {error: "Blog not found"}, status: :not_found
    end
    def render_not_invalid(e)
        render json: {errors: e.record.errors.full_messages}, status: 422
    end
end
