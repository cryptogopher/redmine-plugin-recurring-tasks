# resources :recurring_tasks

# admin view
get 'recurring_tasks', :to => 'recurring_tasks#index'

# project view 
get 'projects/:project_id/recurring_tasks', :to => 'recurring_tasks#index'
get 'projects/:project_id/recurring_tasks/new(/:issue_id)', :to => 'recurring_tasks#new', :as => :new_recurring_task
post 'projects/:project_id/recurring_tasks/create', :to => 'recurring_tasks#create'
get 'projects/:project_id/recurring_tasks/:id/edit', :to => 'recurring_tasks#edit', :as => :edit_recurring_task
patch 'projects/:project_id/recurring_tasks/:id/update', :to => 'recurring_tasks#update'
delete 'projects/:project_id/recurring_tasks/:id/destroy', :to => 'recurring_tasks#destroy', :as => :destroy_recurring_task

