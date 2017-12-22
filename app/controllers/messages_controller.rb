# This controller creates messages between users
class MessagesController < ApplicationController
  def create
    @chat = Conversation.includes(:recipient).find(params[:conversation_id])
    @message = @chat.messages.create(message_params)

    respond_to do |format|
      format.js
    end
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :body)
  end
end
