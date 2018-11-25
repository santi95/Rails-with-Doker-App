class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user
    can :read, :all
    if user.common?
      can :destroy, Post do |post|
        post.user == user
      end
      can :update, Post do |post|
        post.user == user
      end
      can :create, Post
      can :create, Comment
      can :update, Comment do |comment|
        comment.user == user
      end
      can :destroy, Comment do |comment|
        comment.user == user
      end
    end
    if user.admin?  # additional permissions for administrators
      can :manage, :all
      can :destroy, :all
    end
    if user.moderator?  # additional permissions for administrators
      can :create, Forum
      can :manage, Forum do |forum|
        forum.user == user
      end
      can :manage, Forum do |forum|
        user.moderated_forums.include? forum.id
      end
      can :manage, Post do |post|
        user.moderated_forums.include? post.forum.id
      end
      can :manage, Comment do |comment|
        user.moderated_forums.include? comment.post.forum.id
      end

      can :destroy, Post do |post|
        post.user == user
      end
      can :update, Post do |post|
        post.user == user
      end
      can :create, Post
      
      can :manage, Comment do |comment|
        comment.user == user
      end

    end
  end
end
