Rails.application.routes.draw do
  scope :api do
    resources :bombs, controller: "bombs",
      only: [ :index, :show, :create, :update, :destroy ]

    resources :potions, controller: "potions",
      only: [ :index, :show ]
  end
end
