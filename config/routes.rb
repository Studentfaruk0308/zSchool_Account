Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :teachers, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :classrooms, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :salarypayments, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :feepayments, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :salaries, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :tuitionfees, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
