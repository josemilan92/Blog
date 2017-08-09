Rails.application.routes.draw do
  get 'public_meets/new'

  root 'public_posts#index'
  get 'categorias/:id', to: 'public_posts#posts_category', as: 'posts_category'
  get 'articulos/:url', to: 'public_posts#show', as: 'posts_show'

  resources :meets
  get 'citas', to: 'public_meets#new', as: 'citas'
  post 'create_meet', to: 'public_meets#create_meet', as: 'create_meet'

  devise_for :users
  resources :categories
   resources :ads
  resources :comments
  post 'create_comment', to: 'public_posts#create_comment', as: 'create_comment'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root 'post#index'
end
