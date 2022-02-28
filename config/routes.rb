Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'top#index'

  get '/chat', to: 'chat#index'
  get '/chat_messages', to: 'chat#messages'
  get '/chat_form', to: 'chat#chat_form'
  get '/private_chat_messages', to: 'chat#private_chat_messages'

  get '/secret_sql_injection', to: 'chat#secret_sql_injection'

  post '/create_message', to: 'chat#create_message'
  post '/set_name', to: 'top#set_name'
end
