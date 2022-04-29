Rails.application.routes.draw do
  get 'furimas/index'
  get 'messages/index'
  root to: "furimas#index"
end
