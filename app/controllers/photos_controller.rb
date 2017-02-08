class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


  def show
    p = Photo.find(params[:id])
    @source = p.source
    @id = p.id
    @caption = p.caption
    render("show.html.erb")
  end

  def new_form

    render("photos/new_form.html.erb")
  end

  def edit_form
    p = Photo.find(params[:id])
    @source = p.source
    @id = p.id
    @caption = p.caption
    render("photos/edit.html.erb")
  end

  def update_row
    p = Photo.find(params[:id])
    @id = p.id

    @source = params[:the_source]
    @caption = params[:the_caption]
    p.source = @source
    p.caption = @caption
    p.save
    redirect_to("http://localhost:3000/photos/" + @id.to_s)
  end

  def destroy
    p = Photo.find(params[:id])
    @id = p.id
    p.destroy
    redirect_to("http://localhost:3000/photos")
  end

  def create_row
    p = Photo.new
    @source = params[:the_source]
    @caption = params[:the_caption]
    @id = p.id
    p.source = @source
    p.caption = @caption
    p.save
    redirect_to("http://localhost:3000/photos")
  end
end
