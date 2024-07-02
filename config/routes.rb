Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  devise_for :owners, skip: [:passwords], controllers: {
    registrations: "owner/registrations",
    sessions: 'owner/sessions'
  }
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "homes#top"
  get 'homes/registration_top'
  get 'homes/session_top'
  
  
  devise_scope :customer do
    get '/customers/sign_out' => 'devise/sessions#destroy'
  end
  
  devise_scope :owner do
    get '/owners/sign_out' => 'devise/sessions#destroy'
  end
  
  devise_scope :admin do
    get '/admin/sign_out' => 'devise/sessions#destroy'
  end
  
  
  
  
  scope module: :customer do
    
  end
  
  
  
  scope module: :owner do
    get 'owners/ski_resorts' => 'ski_resorts#index'
    get 'owners/ski_resort/:id' => 'ski_resorts#show', as: 'owners_ski_resort'
    resources :ski_resorts, only: [:new, :create, :edit, :update, :destroy]
  end
  
  
  
  namespace :admin do
    resources :prefectures, only: [:index, :edit, :create, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :owners, only: [:index, :show, :edit, :update]
  end
  
end
