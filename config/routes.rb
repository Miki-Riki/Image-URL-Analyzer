Rails.application.routes.draw do
  get '/answers', to: 'answers#analyze_image_url'
end
