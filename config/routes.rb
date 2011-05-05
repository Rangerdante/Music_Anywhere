SampleApp::Application.routes.draw do
	resources :users
	
	match '/signin',	:to => 'users#show'
	match '/new', 		:to => 'users#new'
	
	match '/contact', 	:to => 'pages#contact'
	match '/about', 	:to => 'pages#about'
	match '/help',		:to => 'pages#help'
	
	
	root :to => 'pages#home'
end
