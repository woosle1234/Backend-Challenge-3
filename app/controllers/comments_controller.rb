class CommentsController < ApplicationController

    http_basic_authenticate_with name: "woosle1234", password: "1234", only: :destroy

    def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(comment_params)
      redirect_to article_path(@article)
    end
  
    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article), status: 303
      end

      def show
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article), status: 303
      end

      def update
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article), status: 303
      end
  
  
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body, :status)
      end
  end
  