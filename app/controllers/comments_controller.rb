class CommentsController < ApplicationController

  # def create
  #   @article = Article.new(article_params)
  #   @article.save
  #   flash.notice = "Article '#{@article.title}' born"
  #   redirect_to article_path(@article)
  # end

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]

    @comment.save

    redirect_to article_path(@comment.article)
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end


end
