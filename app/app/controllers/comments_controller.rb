class CommentsController < ApplicationController
    # http_basic_authenticate_with name: "eman", password: "1234", only: :destroy
    before_action :authenticate_user!, only: [:create,:destroy]
 
    # def create
    #   @article = Article.find(params[:article_id])
    #   # ...
    # end
   
    def create

        @article = Article.find(params[:article_id])

        @comment = @article.comments.new(comment_params)
        @comment.user = current_user
        @comment.save
        redirect_to article_path(@article)
    end
     
    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
    end
      private
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
end
