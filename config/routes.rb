Rails.application.routes.draw do


  devise_for :admin,skip: [:registrations,:passwords],controllers: {
      sessions: "admin/sessions"
  }

  devise_for :customers,skip: [:passwords],controllers: {
      registrations: "public/registrations",
      sessions: 'public/sessions'
  }
  root to: 'public/homes#top'
  get 'price' => 'public/homes#price'
  get 'about' => 'public/homes#about'
  get 'selection_date' => 'public/orders#selection_date'
  get 'new' => 'public/homes#new'
  post 'orders/attention' => 'public/orders#attention'
  post 'orders/confirm' => 'public/orders#confirm'
  post 'orders/payment' => 'public/orders#payment'
  get 'orders/thanks' => 'public/orders#thanks'
  patch 'customers/:id' => 'public/customers#update'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope module: :public do
    resources :orders, only: [:new,:index,:edit,:create]
  end

  scope module: :public do
    resources :customers, only: [:edit,:update]
  end

  namespace :admin do
    resources :players, only: [:new,:index,:edit,:destroy,:create,:update]
  end

  namespace :admin do
    resources :orders, only: [:index,:show,:update]
  end

end
