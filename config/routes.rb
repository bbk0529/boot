Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do

    collection do
      get '/page_scroll' => 'posts#page_scroll', as: 'scroll'
    end

  end
end
