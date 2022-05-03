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
  get 'orders/thanks' => 'public/orders#thanks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope module: :public do
    resources :orders, only: [:new,:index,:show,:edit,:create]
  end

  scope module: :public do
    resources :customers, only: [:edit,:show]
  end

end
