Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :home do
  end

  resources :reports do
  end

  resources :notices do
  end

end
