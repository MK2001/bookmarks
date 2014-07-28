class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @bookmark = Bookmark.find_by_id(params['id'])
    render 'show'
  end
  def create
    b = Bookmark.new
    b.name = params['name']
    b.url = params['url']
    b.caption = params['caption']
  end
end