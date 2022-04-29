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
  get 'orders/attention' => 'public/orders#attention'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
