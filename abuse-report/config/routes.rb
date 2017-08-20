Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get "home/done" => "home#done"
  resources :home do
  end

  resources :reports do
  end

  resources :notices do
    get '/state_change/:id', to: 'notices#state_change'
  end

  get '/create_notices', to: 'notices#create'

end
