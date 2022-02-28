class TopController < ApplicationController
  def index
    render 'set_name'
  end

  def set_name
    cookies[:username] = params[:username]
    Message.create!(username: '管理者', message: "#{params[:username]} さんがログインしました！")

    redirect_to '/chat'
  end
end
