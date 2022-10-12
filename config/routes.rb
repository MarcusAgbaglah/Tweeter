require 'sidekiq/web'

Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :tweets, expect: [:edit, :update]

  devise_for :users
  root to: "tweets#index"
end
