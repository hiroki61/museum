Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users, controllers: {
        sessions:      'users/sessions',
        passwords:     'users/passwords',
        registrations: 'users/registrations'
    }

    resources :museums
    resources :users

    root 'museums#index'

    resources :museums do
    	member do #美術館一覧画面からお気に入り登録をする
      		post "add", to: "favorites#create"
    	end
  	end
  #個人ページからお気に入りを削除する
  	resources :favorites, only: [:destroy]

    get '/termsofservice' => 'footer#termsofservice'
    get '/sitepolicy' => 'footer#sitepolicy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
