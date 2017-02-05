Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  get("/photos/delete_photo/:id", { :controller => "photos", :action => "delete_photo"})
  get("/photos/:id/edit_form", { :controller => "photos", :action => "edit_form"})
  get("/photos/:id",       { :controller => "photos", :action => "show" })
  get("/photos/update_photo/:id", { :controller => "photos", :action => "update_row" })


end
