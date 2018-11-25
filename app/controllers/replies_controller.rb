class RepliesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new, :destroy]
  before_action :find_forum_post_comment
  before_action :find_post_comment_reply, only: %i[edit update destroy show upvote downvote]

  def show; end

  def new
    @reply = current_user.replies.new
  end

  def create
    @reply = current_user.replies.new(reply_params)
    @reply.comment_id = @comment.id

    if @reply.save
      redirect_to forum_post_path(@forum, @post)
    else
      redirect_to forum_post_path(@forum, @post)
    end
  end

  def edit; end

  def update
      if @reply.update(reply_params)
        redirect_to forum_post_path(@forum, @post)
      else
        render 'edit'
    end
  end

  def destroy
    @reply.destroy
    redirect_to forum_post_path(@forum, @post)
  end

  private

    def reply_params
      params.require(:reply).permit(:content, :image)
    end

    def find_forum_post_comment
      @forum = Forum.find(params[:forum_id])
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:comment_id])
    end

    def find_post_comment_reply
        @reply = Reply.find(params[:id])
    end
end
