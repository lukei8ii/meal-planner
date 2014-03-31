MealPlanner::Application.routes.draw do
  resources :foods

  # devise_for :users
  root to: "day_plans#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
