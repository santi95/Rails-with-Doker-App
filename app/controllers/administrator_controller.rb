class AdministratorController < ApplicationController
    before_action :authenticate_user!, only: [:create, :new, :edit, :moderating, :show]
    def index
      @users = User.all
      @apply = ModeratorApplicant.all        
      @users_all = @users.order("created_at DESC") 
      if params[:mf]
        moderating
        redirect_to administrator_index_path()
         
      end
    end
    def create
      @users = User.all
      @apply = ModeratorApplicant.all        
      @users_all = @users.order("created_at DESC") 
      if params[:mf]
        moderating
        redirect_to administrator_index_path()
        
      end
         
    end
    def show
    end
    def edit
    end
  
    def update
      if @user.update(user_params)
        redirect_to administrator_index_path()
      else
        render 'devise/registration/edit'
      end
    end

    def moderating
      @user = User.find(params[:user_mf])
      @added = Integer(params[:mf])
      if @user.moderated_forums.include? @added
        @user.remove_moderated_forums(@added)
        if @user.moderated_forums.any?
          unless @user == "admin"
            @user.role = "moderator"
          end
        end
      else
        unless @user == "admin"
          @user.role = "moderator"
        end
        @user.add_moderated_forums(@added)
      end
    end

    private
  def user_params
    params.require(:forum).permit(:id)
  end

  def find_user
    @user = User.find(params[:id])
  end

  def find_forum
    @forum = Forum.find(params[:id])
  end

end
