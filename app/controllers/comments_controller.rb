class CommentsController < ApplicationController
  before_action :find_forum_post
  before_action :authenticate_user!, only: [:create, :new]
  before_action :find_post_comment, only: %i[edit update destroy show upvote downvote]

  def show; end

  def new
    @comment = current_user.comments.new
  end

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.post_id = @post.id

    if @comment.save
      redirect_to forum_post_path(@forum, @post)
    else
      render "new"
    end
  end

  def edit; end



  def upvote
    unless current_user.voted_up_on? @comment
      if current_user.voted_down_on? @comment
        @comment.upvote_from current_user
        @comment.user.add
        @comment.user.add
        @comment.add_2
        redirect_to forum_post_path(@forum, @post)
      else
        @comment.upvote_from current_user
        @comment.user.add
        @comment.add
        redirect_to forum_post_path(@forum, @post)
      end

    end
  end

  def downvote
    unless current_user.voted_down_on? @comment
      if current_user.voted_up_on? @comment
        @comment.downvote_from current_user
        @comment.user.rest
        @comment.user.rest
        @comment.rest_2
        redirect_to forum_post_path(@forum, @post)
      else
        @comment.downvote_from current_user
        @comment.user.rest
        @comment.rest
        redirect_to forum_post_path(@forum, @post)
      end

    end
  end

  def update
      if @comment.update(comment_params)
        redirect_to forum_post_path(@forum, @post)
      else
        render 'edit'
    end
  end

  def destroy
    @comment.destroy
    redirect_to forum_post_path(@forum, @post)
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :image, :stars)
    end

    def find_forum_post
      @forum = Forum.find(params[:forum_id])
      @post = Post.find(params[:post_id])
    end

    def find_post_comment
        @comment = Comment.find(params[:id])
    end
end
