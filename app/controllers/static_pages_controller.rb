class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new

    @photos = flickr.photos.search(user_id: params[:user_id], per_page: 10) if params[:user_id]
  end
end
