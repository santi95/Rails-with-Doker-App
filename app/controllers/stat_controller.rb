class StatController < ApplicationController
  def index
    @users_stats = User.all
    @forums_stats = Forum.all
    @query_users = @users_stats.order("reputation DESC").limit(10)
    @query_forums = @forums_stats.order("number_subscriptions DESC").limit(10)
  end
end
