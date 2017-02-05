class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


  def show
    p = Photo.find(params[:id])
    @source = p.source
    @id = p.id
    @caption = p.caption
    render("photos/show.html.erb")
  end

  def new_form

    render("photos/new_form.html.erb")
  end

  def edit_form
    p = Photo.find(params[:id])
    @source = p.source
    @id = p.id
    @caption = p.caption
    render("photos/edit_form.html.erb")
  end

  def update_row
    p = Photo.find(params[:id])
    @id = p.id
    p.source = @source
    p.caption = @caption
    p.save
    render("photos/show.html.erb")
  end
end
