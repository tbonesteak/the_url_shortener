class UrlsController < ApplicationController

  def index
    @urls = Url.all.reverse
    @url = Url.new
  end

  def create
    @url = Url.new(params[:url])

    if @url.save
      # @url = Url.new
      # @urls = Url.all
      # render action: "index"
      redirect_to urls_path
    end

  end

end
