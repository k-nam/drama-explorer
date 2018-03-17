Rails.application.routes.draw do
	resource :welcome

	resources :dramas do	
		resources :seasons
		resources :participations
	end
	
	resources :episodes
	
	resources :actors
	
	resources :participations

	root 'dramas#index'
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
