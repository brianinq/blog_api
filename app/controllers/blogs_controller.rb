class BlogsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_not_invalid
    skip_before_action :authorized, only: [:index, :show]
    def index
        render json: Blog.all, status: :ok
    end
    def create
        blog = Blog.create!(blog_params)
        render json: blog, status: :created
    end
    def show
        blog = find_blog
        blog.update(views: blog.views += 1)
        render json: blog, serializer: CustomBlogSerializer, status: :ok
    end
    def update
        blog = find_blog
        blog.update(likes: blog.likes +=1)
        render json: blog, serializer: CustomBlogSerializer, status: :ok
    end
    def destroy
        blog = find_blog
        blog.destroy
        head :no_content
    end

    private
    def find_blog
        Blog.find(params[:id])
    end
    def blog_params
        params.permit(:title, :poster, :body, :user_id, :category_id)
    end
    def render_not_found
        render json: {error: "Blog not found"}, status: :not_found
    end
    def render_not_invalid(e)
        render json: {errors: e.record.errors.full_messages}, status: 422
    end
end
