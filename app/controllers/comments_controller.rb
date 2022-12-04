class CommentsController < ApplicationController
    def create
        comment = Comment.create(
            content: params[:content],
            blog_id: params[:blog_id],
            user_id: current_user.id
        )
        render json: comment
    end
    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        head :no_content
    end
end
