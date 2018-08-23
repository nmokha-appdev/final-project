Rails.application.routes.draw do
  # Routes for the Vote resource:

  # CREATE
  get("/votes/new", { :controller => "votes", :action => "new_form" })
  post("/create_vote", { :controller => "votes", :action => "create_row" })

  # READ
  get("/votes", { :controller => "votes", :action => "index" })
  get("/votes/:id_to_display", { :controller => "votes", :action => "show" })

  # UPDATE
  get("/votes/:prefill_with_id/edit", { :controller => "votes", :action => "edit_form" })
  post("/update_vote/:id_to_modify", { :controller => "votes", :action => "update_row" })

  # DELETE
  get("/delete_vote/:id_to_remove", { :controller => "votes", :action => "destroy_row" })

  #------------------------------

  #------------------------------
  # Routes for the Option resource:
    devise_for :users

  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  root "decisions#index"

  # CREATE
  get("/options/new", { :controller => "options", :action => "new_form" })
  post("/create_option", { :controller => "options", :action => "create_row" })

  # READ
  get("/options", { :controller => "options", :action => "index" })
  get("/options/:id_to_display", { :controller => "options", :action => "show" })

  # UPDATE
  get("/options/:prefill_with_id/edit", { :controller => "options", :action => "edit_form" })
  post("/update_option/:id_to_modify", { :controller => "options", :action => "update_row" })

  # DELETE
  get("/delete_option/:id_to_remove", { :controller => "options", :action => "destroy_row" })

  #------------------------------
  # Routes for the Comment resource:

  # CREATE
  get("/comments/new", { :controller => "comments", :action => "new_form" })
  post("/create_comment", { :controller => "comments", :action => "create_row" })

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  # UPDATE
  get("/comments/:prefill_with_id/edit", { :controller => "comments", :action => "edit_form" })
  post("/update_comment/:id_to_modify", { :controller => "comments", :action => "update_row" })

  # DELETE
  get("/delete_comment/:id_to_remove", { :controller => "comments", :action => "destroy_row" })  
 
  # Routes for the Decision resource:

  # CREATE
  get("/decisions/new", { :controller => "decisions", :action => "new_form" })
  post("/create_decision", { :controller => "decisions", :action => "create_row" })

  # READ
  get("/decisions", { :controller => "decisions", :action => "index" })
  get("/decisions/:id_to_display", { :controller => "decisions", :action => "show" })

  # UPDATE
  get("/decisions/:prefill_with_id/edit", { :controller => "decisions", :action => "edit_form" })
  post("/update_decision/:id_to_modify", { :controller => "decisions", :action => "update_row" })

  # DELETE
  get("/delete_decision/:id_to_remove", { :controller => "decisions", :action => "destroy_row" })
  
  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
