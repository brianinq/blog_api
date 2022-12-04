class CategoriesController < ApplicationController
    def index
        render json: Category.all, status: :ok
    end
    def show
        category = Category.find(params[:id])
        render json: category, include: [:blogs]
    rescue ActiveRecord::RecordNotFound
            render json: {error: "Not Found"}, status: 404
    end
    def create
        category = Category.create!(params.permit(:name))
        render json: category
    rescue ActiveRecord::RecorInvalid => e
        render json: {errors: e.record.errors.full_messages}, status: 422
    end

end
