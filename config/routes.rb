SampleApp::Application.routes.draw do
	resources :users
	resources :sessions, :only => [:new, :create, :destroy]
	
	match '/signin',	:to => 'sessions#new'
	match '/signout',	:to => 'sessions#destroy'
	
	match '/userpage',	:to => 'users#show'
	match '/new', 		:to => 'users#new'
	
	match '/contact', 	:to => 'pages#contact'
	match '/about', 	:to => 'pages#about'
	match '/help',		:to => 'pages#help'
	
	
	root :to => 'pages#home'
end
