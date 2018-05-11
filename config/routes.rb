Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'time_calculator', to: 'questions#time_calculator', as: :time_calculator
  get 'pace_answer', to: 'questions#pace_answer', as: :pace_answer
  get 'distance_answer', to: 'questions#distance_answer', as: :distance_answer
  get 'time_answer', to: 'questions#time_answer', as: :time_answer
end
