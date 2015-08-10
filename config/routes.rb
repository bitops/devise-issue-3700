Rails.application.routes.draw do

  devise_for :staffs, controllers: { sessions: "sessions" }

  scope ":consumer_id" do
    get '/', to: 'foos#index'

    get '/foos', to: 'foos#index'
    get '/foos/:id', to: 'foos#show'
  end

end
