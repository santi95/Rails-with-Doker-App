Rails.application.routes.draw do
get 'stat' => 'stat#index'
 # get 'welcome/index'
 root 'welcome#index'
 post "forums/subscribe", to: "forums#subscribe", as: "subscribe"
 post "forums/unsubscribe", to: "forums#unsubscribe", as: "unsubscribe"


  resources :forums do
    put :aplicaciones, on: :member
    get :apply
    resources :posts do
      member do
        put "like" => "posts#upvote"
        put "unlike" => "posts#downvote"
      end
      put :favorite, on: :member
      resources :comments do
        resources :replies 
        member do
          put "like" => "comments#upvote"
          put "unlike" => "comments#downvote"
        end
      end
    end
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :administrator do
  resources :users

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'favorites' => 'favorites#show'
end
