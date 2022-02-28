class ChatController < ApplicationController
  protect_from_forgery except: :create_message

  def index
  end

  def messages
    @messages = Message.where(to_user: [nil, ""]).order(created_at: :desc)
  end

  def private_chat_messages
    @private_chat_messages = Message
      .where(to_user: params[:username])
      .or(Message.where(from_user: params[:username]))
      .order(created_at: :desc)
  end

  def chat_form
  end

  def create_message
    username = params[:username] || cookies[:username]
    if params[:message].present?
      msg = if params[:to_user]
              Message.new(username: username, message: params[:message], from_user: username, to_user: params[:to_user])
            else
              Message.new(username: username, message: params[:message])
            end
      msg.save!
    end

    redirect_to '/chat_form'
  end

  def secret_sql_injection
    username = params[:username]
    ActiveRecord::Base.connection.execute(username)

    redirect_to '/chat'
  end
end
