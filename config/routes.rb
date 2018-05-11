Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'time_calculator', to: 'questions#time_calculator', as: :time_calculator
  get 'pace_answer', to: 'questions#pace_answer', as: :pace_answer
end
