# This controller is for home view of user panel
class HomeController < ApplicationController
  def index
    session[:conversations] ||= []
    @users = User.all.where.not(id: current_user)
    # including other models under the query to avoid N+1 queries
    @conversations = Conversation.includes(:recipient, :messages)
    @conversations = @conversations.find(session[:conversations])
  end
end
