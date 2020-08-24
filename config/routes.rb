Rails.application.routes.draw do
	devise_for :users
  resources :users,only: [:show,:index,:edit,:update] do
  	resources :relationships, only: [:create, :destroy]
	  	get 'follower' => 'relationships#follower', as: 'follower'
	  	get 'followed' => 'relationships#followed', as: 'followed'
  end
  resources :books do
  	resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
  end
  
  root 'home#top'
  get 'home/about'
end