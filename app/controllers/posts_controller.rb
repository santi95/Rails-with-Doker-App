class PostsController < ApplicationController
    before_action :find_forum
    before_action :authenticate_user!, only: [:create, :new]
    before_action :find_post, only: %i[edit update destroy show upvote downvote]


    def new
        @post = current_user.posts.new
    end



    def show
      @post = Post.find(params[:id])
      @comments = @post.comments
    end

    def create
        @post = current_user.posts.new(post_params)
        @post.forum_id = @forum.id

        if @post.save
            redirect_to forum_path(@forum)
        else
            render 'new'
        end
    end

    def edit; end

    def upvote
        unless current_user.voted_up_on? @post
            if current_user.voted_down_on? @post
                @post.upvote_from current_user
                @post.user.add
                @post.user.add
                @post.add_2
                redirect_to forum_post_path(@forum, @post)
            else
                @post.upvote_from current_user
                @post.user.add
                @post.add
                redirect_to forum_post_path(@forum, @post)
            end
        end
    end
    
    def downvote
        unless current_user.voted_down_on? @post
            if current_user.voted_up_on? @post
                @post.downvote_from current_user
                @post.user.rest
                @post.user.rest
                @post.rest_2
                redirect_to forum_post_path(@forum, @post)
            else
                @post.downvote_from current_user
                @post.user.rest
                @post.rest
                redirect_to forum_post_path(@forum, @post)
            end
        end
    end

    def favorite
        type = params[:type]
        @post = Post.find(params[:id])
        
        if type == "favorite"
          current_user.favorites << @post
          redirect_to forum_post_path(@forum, @post)
    
        elsif type == "unfavorite"
          current_user.favorites.delete(@post)
          redirect_to forum_post_path(@forum, @post)
    
        else
          # Type missing, nothing happens
          redirect_to :back, notice: 'Nothing happened.'
        end
    end

    def update
        if @post.update(post_params)
            redirect_to forum_post_path(@forum, @post)
        else
            render 'edit'
        end
    end

    def destroy
        @post.destroy
        redirect_to forum_path(@forum)
    end

    private

    def post_params
        params.require(:post).permit(:title, :topic, :content, :image)
    end

    def find_forum
        @forum = Forum.find(params[:forum_id])
    end

    def find_post
        @post = Post.find(params[:id])
    end



end
