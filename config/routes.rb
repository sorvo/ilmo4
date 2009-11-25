ActionController::Routing::Routes.draw do |map|
  map.resources :courses
  map.resources :sessions
  map.resources :users
  map.resources :course_instances
  map.resources :exercise_groups
  map.logout "/sessions/logout", :controller => :sessions, :action => :destroy

  map.root :controller => "courses"

end
