class ForumsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]
  before_action :find_forum, only: %i[edit update destroy show]
  before_action :find_forum_apply, only: [:apply]

  def index
    @forums = Forum.all
    if params[:search]
      @forums = Forum.search(params[:search]).order("created_at DESC")
    else
      @forums = Forum.all.order("created_at DESC")
    end

  end

  def show
    @forum_id = @forum.id
        if params[:search]
          @specific = @forum.posts
          @the_search = @specific.search(params[:search]).order("created_at DESC")
          unless @the_search.nil?
            
          else
            @the_search = @the_search.order("created_at DESC")
          end
        else
            @the_search = @forum.posts.order("created_at DESC")
        end
   end

  def new
    @forum = current_user.forums.new
  end

  def create
    @forum = current_user.forums.new(forum_params)
    if @forum.save
        redirect_to forums_path
    else
        render :new
    end
  end

  def edit
  end

  def update
    if @forum.update(forum_params)
      redirect_to forum_path(@forum)
    else
      render 'edit'
    end
  end

  def destroy
    @forum.destroy
    redirect_to forums_path
  end

  def apply
    current_user.update_attribute(:apply_moderate, "yes")
    current_user.update_attribute(:moderated_forums, [@forum])
    redirect_to forum_path(@forum)
  end

  def subscribe
    user = User.find(current_user.id)
    @event = Forum.find(params[:forum])
    if user.forums.exclude? @event
      user.forums << @event
      @event.add
    end
    user.save
    redirect_to forums_path
  end

  def unsubscribe
    user = User.find(current_user.id)
    @event = Forum.find(params[:forum])
    user.forums.delete(@event)
    @event.rest
    redirect_to forums_path
  end

  def aplicaciones
    type = params[:type]
    @forum = Forum.find(params[:id])

    if type == "aplicar"
      current_user.application_deck << @forum
      redirect_to forum_path(@forum)

    elsif type == "desaplicar"
      current_user.application_deck.delete(@forum)
      redirect_to forum_path(@forum)

    end
  end

  private
  def forum_params
    params.require(:forum).permit(:name, :subject, :description, :number_subscriptions, :stars)
  end

  def find_forum
    @forum = Forum.find(params[:id])
  end

  def find_forum_apply
    @forum = Forum.find(params[:forum_id])
  end
end
